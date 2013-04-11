--[[

 * events.lua - Event module to fire registered functions automatically.
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

-- Module Definition..
module( "events", package.seeall );

----------------------------------------------------------------------
-- Event Table Definition
----------------------------------------------------------------------
local Events = { }

----------------------------------------------------------------
--- func : GetTable
--- desc : Returns the Events table.
----------------------------------------------------------------
function GetTable ( )
    return Events;
end

----------------------------------------------------------------
-- func : Add
-- desc : Adds a hook to the table.
----------------------------------------------------------------
function Add ( event_name, name, func )
    -- Create new table for non-existing Events.
    if( Events[ event_name ] == nil ) then
        Events[ event_name ] = { }
    end
    
    Events[ event_name ][ name ] = func;
end

----------------------------------------------------------------
-- func : Remove
-- desc : Removes a hook from the table.
----------------------------------------------------------------
function Remove ( event_name, name )
    Events[ event_name ][ name ] = nil;
end

----------------------------------------------------------------
-- func : EventHandler
-- desc : Calls any hooked event inside the table when an event is raised.
----------------------------------------------------------------
function EventHandler ( name, ... )
    local EventTable = Events[ name ];

    -- Skip non-existing Events.
    if( EventTable == nil ) then return false; end
   
    -- Loop each hook and call them.
    for k, v in pairs( EventTable ) do
        if( v == nil ) then
            -- No function is set for this event.
            print( "Attempting to call a nil function for Event: " .. tostring( k ) );
            break;
        else
            -- Attempt to call function.
            local rA, rB, rC, rD
            rA, rB, rC, rD = pcall( v, ... );
            
            if( rA == nil ) then
                -- Call failed, remove from hook table.
                print( "Call to Event failed! Removing from table.\r\nEvent: " .. tostring( k ) .. "\r\nFailed: " .. tostring( rB ) );
                EventTable[ k ] = nil;
            else
                -- Override return values.
                if( rB ~= nil and rB ~= false ) then return rB, rC, rD; end
            end
        end
    end
	return false;
end