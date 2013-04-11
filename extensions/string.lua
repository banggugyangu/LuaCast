--[[

 * string.lua - String extensions.
 * -----------------------------------------------------------------------
 * Some functions in this file are based on functions found on the Lua wiki.
 * -----------------------------------------------------------------------
 *
 *		This file is part of Ashita.
 *
 *		Ashita is free software: you can redistribute it and/or modify
 *		it under the terms of the GNU Lesser General Public License as published by
 *		the Free Software Foundation, either version 3 of the License, or
 *		(at your option) any later version.
 *
 *		Ashita is distributed in the hope that it will be useful,
 *		but WITHOUT ANY WARRANTY; without even the implied warranty of
 *		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *		GNU Lesser General Public License for more details.
 *
 *		You should have received a copy of the GNU Lesser General Public License
 *		along with Ashita.  If not, see <http://www.gnu.org/licenses/>.
 *

]]--

----------------------------------------------------------------------
-- func : string.Contains
-- desc : Determines if the string contains the given string.
-- retn : False if not found, true otherwise.
----------------------------------------------------------------------
function string.Contains( s, p )
    if( s:find( p ) == nil) then
        return false;
    end
    return true;
end

----------------------------------------------------------------------
-- func : string.ToTable
-- desc : Converts the string chars to a byte table.
-- retn : Table of the string characters.
----------------------------------------------------------------------
function string.ToTable( s )
    local t = { };
    for x = 1, string.len( s ) do
        t[x] = string.byte( s, x );
    end
    return t
end

----------------------------------------------------------------------
-- func : string.TrimStart
-- desc : Trims whitespace from the left side of the string.
-- retn : Trimmed string.
----------------------------------------------------------------------
function string.TrimStart( s, char )
    if (not char) then char = ' ' end
    s = string.reverse( s );
    s = string.TrimEnd( s, char );
    return string.reverse( s );
end

----------------------------------------------------------------------
-- func : string.TrimEnd
-- desc : Trims whitespace from the right side of the string.
-- retn : Trimmed string.
----------------------------------------------------------------------
function string.TrimEnd( s, char )
    if (not char) then char = ' ' end
    if (string.sub( s, -1 ) == char) then
        s = string.sub( s, 0, -2 );
        s = string.TrimEnd( s, char );
    end
    return s;
end

----------------------------------------------------------------------
-- func : string.Trim
-- desc : Trims whitespace from both sides of the given string.
-- retn : Trimmed string.
----------------------------------------------------------------------
function string.Trim( s, char )
    if (not char) then char = ' ' end
    s = string.TrimStart( s, char );
    s = string.TrimEnd( s, char );
    return s;
end

----------------------------------------------------------------------
-- func : string.GetArgs
-- desc : Parses the string for command arguments.
-- retn : Table of found arguments.
----------------------------------------------------------------------
function string:GetArgs()
    local STATE_NONE 	= 0;
    local STATE_WORD 	= 1;
    local STATE_QUOTE 	= 2;

    local currentState 	= STATE_NONE;
    local currentChar 	= nil;
    local nextChar 		= nil;
    local stringStart 	= nil;
    local args 			= { };

    for x = 1, string.len(self) do
        -- Read the current character..
        currentChar = string.sub( self, x, x );
        nextChar 	= string.sub( self, x+1, x+1 );

        -- Current state is nothing..
        if currentState == STATE_NONE then
            if (currentChar == '"') then
                stringStart = x+1;
                currentState = STATE_QUOTE;
            else
                if (currentChar ~= ' ') then
                    stringStart = x;
                    currentState = STATE_WORD;
                end
            end

        -- Current state is a string..
        elseif currentState == STATE_QUOTE then
            if (currentChar == '"') then
                currentState = STATE_NONE;
                table.insert( args, #args+1, string.sub( self, stringStart, x - 1 ) );
            end

        -- Current state is a word..
        elseif currentState == STATE_WORD then
            if (currentChar == ' ' or nextChar == nil or nextChar == '\0') then
                currentState = STATE_NONE;
                table.insert( args, #args+1, string.sub( self, stringStart, x - 1 ) );
            end

        -- Current state is invalid..
        else
            print( "UNKNOWN ERROR" );
        end
    end

    -- Catch last word argument..
    if (currentState == STATE_WORD) then
        table.insert( args, #args+1, string.sub( self, stringStart, #self + 1 ) );
    end

    -- Return argument table..
    return args;
end

----------------------------------------------------------------------
-- func : string:IsQuotedArg
-- desc : Determines if this is a quoted command argument.
-- retn : First value returned: True if this is a quoted argument, else False.
--        Second value returned: The text within quotes (including an empty string).
--        If it's not quoted text, the second value will be nil.
----------------------------------------------------------------------
function string:IsQuotedArg()
    local arg = string.match( self, "^\"(.*)\"$" );
    return ( arg ~= nil ), arg
end

----------------------------------------------------------------------
-- func : string.ParseArgs
-- desc : Parses the string for command arguments.
-- retn : Table of found arguments.
--
-- note : Modified version of GetArgs to read and parse non-standard
--        game cmomands.
----------------------------------------------------------------------
function string:ParseArgs()
    local STATE_NONE    = 0;
    local STATE_WORD    = 1;
    local STATE_QUOTE   = 2;

    local currentState  = STATE_NONE;
    local currentChar   = nil;
    local nextChar      = nil;
    local stringStart   = nil;
    local prefix        = nil;
    local args          = { };

    for x = 1, string.len(self) do
        -- Read the current character..
        currentChar = string.sub( self, x, x );
        nextChar    = string.sub( self, x+1, x+1 );

        -- If the line doesn't start with a /, it's not a command to be parsed,
        -- but rather text that will be put into chat.
        -- Return nil.
        if (x == 1 and currentChar ~= '/') then
            return nil;
        end

        -- Current state is nothing..
        if currentState == STATE_NONE then
            if (currentChar == '"') then
                stringStart = x;
                currentState = STATE_QUOTE;
            elseif (currentChar ~= ' ') then
                stringStart = x;
                currentState = STATE_WORD;
            end

        -- Current state is a string..
        elseif currentState == STATE_QUOTE then
            if (currentChar == '"') then
                table.insert( args, #args+1, string.sub( self, stringStart, x ) );
                currentState = STATE_NONE;
            end

        -- Current state is a word..
        elseif currentState == STATE_WORD then
            if (currentChar == ' ') then
                table.insert( args, #args+1, string.sub( self, stringStart, x - 1 ) );
                if (prefix == nil) then
                    prefix = args[#args];
                end
                currentState = STATE_NONE;
            elseif (nextChar == nil or nextChar == '\0') then
                -- This section never actually seems to get hit during processing.
                -- Regardless, it needs to use a different endpoint than the block above.
                table.insert( args, #args+1, string.sub( self, stringStart, x ) );
                if (prefix == nil) then
                    prefix = args[#args];
                end
                currentState = STATE_NONE;
            elseif (prefix == nil and currentChar == '/' and x == (stringStart+1)) then
                -- If command line starts with //, put that in its own argument field
                table.insert( args, #args+1, string.sub( self, stringStart, x ) );
                prefix = args[#args];
                currentState = STATE_NONE;
            elseif (currentChar == '"') then
                -- A quote mark should start a new quote arg, even if there is no space delimiter.
                table.insert( args, #args+1, string.sub( self, stringStart, x - 1 ) );
                currentState = STATE_QUOTE;
                stringStart = x;
            end

        -- Current state is invalid..
        else
            print( "UNKNOWN ERROR" );
        end
    end

    -- Catch last word argument..
    if (currentState == STATE_WORD) then
        table.insert( args, #args+1, string.sub( self, stringStart, #self ) );
    end

    -- Any unclosed quote arg is discarded.

    -- Return argument table..
    return args;
end