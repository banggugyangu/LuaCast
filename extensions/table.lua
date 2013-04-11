--[[

 * table.lua - Table extensions.
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
-- func : table.Copy
-- desc : Creates a deep copy of a table.
-- retn : Deep copy of the given table.
----------------------------------------------------------------------
function table.Copy( t )
    if type( t ) ~= 'table' then return t; end
    
    local t_mt = getmetatable( t );
    local copy = { };
    
    for k, v in pairs( t ) do
        if type( v ) == 'table' then
            v = table.Copy( t );
        end
        copy[ k ] = v;
    end

    setmetatable( copy, t_mt );
    return copy;
end

----------------------------------------------------------------------
-- func : table.Count
-- desc : Counts the number of entries in a table.
-- retn : Number of entries.
----------------------------------------------------------------------
function table.Count( t )
    local x = 0;
    for k, _ in pairs( t ) do
        x = x + 1;
    end
    return x;
end

----------------------------------------------------------------------
-- func : table.HasKey
-- desc : Determines if a table has the given key.
-- retn : True if found, false otherwise.
----------------------------------------------------------------------
function table.HasKey( t, key )
    for k, v in pairs( t ) do
        if k == key then return true; end
    end
    return false;
end

----------------------------------------------------------------------
-- func : table.HasValue
-- desc : Determines if a table has the given value.
-- retn : True if found, false otherwise.
----------------------------------------------------------------------
function table.HasValue( t, val )
    for k, v in pairs( t ) do
        if v == val then return true; end
    end
    return false;
end

----------------------------------------------------------------------
-- func : table.Merge
-- desc : Merges two tables together.
-- retn : Destination table.
----------------------------------------------------------------------
function table.Merge( dest, src )
    for k, v in pairs( src ) do
        if (type( v ) == 'table' and type( dest[ k ] ) == 'table') then
            table.Merge( dest[ k ], v );
        else
            dest[ k ] = v;
        end
    end
    return dest;    
end

----------------------------------------------------------------------
-- func : table.Nil
-- desc : Terminate all values in a table.
----------------------------------------------------------------------
function table.Nil( t )
    for k, v in pairs( t ) do
        t[ k ] = nil;
    end
end

----------------------------------------------------------------------
-- func : table.Reverse
-- desc : Reverses a table.
-- retn : A reversed table.
----------------------------------------------------------------------
function table.Reverse( t )
    local len = #t;
    local ret = { };
    
    for x = len, 1, -1 do
        ret[ len - x + 1 ] = t[ x ];
    end
    return ret;
end

----------------------------------------------------------------------
-- func : table.SortByKey
-- desc : Sorts a table by its keys, in the given order.
----------------------------------------------------------------------
function table.SortByKey( t, desc )
    local temp = { };
    for k, _ in pairs( t ) do table.insert( temp, k ); end
    
    if desc then 
        table.sort( temp, function( a, b ) return t[ a ] < t[ b ] end );
    else 
        table.sort( temp, function( a, b ) return t[ a ] > t[ b ] end ); 
    end
    
    return temp;    
end
