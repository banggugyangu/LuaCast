--[[

 * timer.lua - Timer event module. (Ghetto threads!)
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

    This file is based on the timer.lua script which can be found within the 
    popular game, Garry's Mod. However there are no credits attached to the 
    file so the original author of this file is unknown. 

    It has been modified for Ashita's needs by atom0s. 

]]--


-- Require Events Module..
require( "events" );

-- Module Definition..
module( "timer", package.seeall );

----------------------------------------------------------------------
-- Timer Status Definitions
----------------------------------------------------------------------
local TIMER_PAUSED      = 0;
local TIMER_STOPPED     = 1;
local TIMER_RUNNING     = 2;

----------------------------------------------------------------------
-- Timer Table Definitions
----------------------------------------------------------------------
local Timer         = { };
local TimerOnce     = { };

----------------------------------------------------------------------
-- func : CreateTimer
-- desc : Creates a timer that is started in a 'stopped' state.
----------------------------------------------------------------------
local function CreateTimer( name )
    if (Timer[ name ] == nil) then
        Timer[ name ] = { };
        Timer[ name ].Status = TIMER_STOPPED;
        return true;
    end
    return false;
end

----------------------------------------------------------------------
-- func : RemoveTimer
-- desc : Removes a timer.
----------------------------------------------------------------------
function RemoveTimer( name )
    Timer[ name ] = nil;
end

----------------------------------------------------------------------
-- func : IsTimer
-- desc : Determines if a timer with the given name exists.
----------------------------------------------------------------------
function IsTimer( name )
    return Timer[ name ] ~= nil;
end

----------------------------------------------------------------------
-- func : Once
-- desc : Creates a one-time timer.
----------------------------------------------------------------------
function Once( delay, func, ... )
    local once_timer  = { };
    once_timer.Finish = os.time() + delay;
    if (func) then once_timer.Function = func; end
    once_timer.Args = {...};
    
    table.insert( TimerOnce, once_timer );
    return true;
end

----------------------------------------------------------------------
-- func : Create
-- desc : Creates a timer.
----------------------------------------------------------------------
function Create( name, delay, reps, func, ... )
    -- Remove existing timer..
    if (IsTimer( name )) then
        RemoveTimer( name );
    end
    
    -- Adjust and start the timer..
    AdjustTimer( name, delay, reps, func, unpack( {...} ) );
    StartTimer( name );
end

----------------------------------------------------------------------
-- func : StartTimer
-- desc : Starts, or restarts, the timer.
----------------------------------------------------------------------
function StartTimer( name )
    if (IsTimer( name )) then
        Timer[ name ].n         = 0;
        Timer[ name ].Status    = TIMER_RUNNING;
        Timer[ name ].Last      = os.time();
        return true;
    end
    return false;
end

----------------------------------------------------------------------
-- func : AdjustTimer
-- desc : Updates a timers params.
----------------------------------------------------------------------
function AdjustTimer( name, delay, reps, func, ... )
    -- Recreate the timer..
    CreateTimer( name );
    
    -- Set timer properties..
    Timer[ name ].Delay = delay;
    Timer[ name ].Reps  = reps;
    Timer[ name ].Args  = {...};
    
    if (func) then
        Timer[ name ].Function = func;
    end
    
    return true;
end

----------------------------------------------------------------------
-- func : Pause
-- desc : Pauses a timer.
----------------------------------------------------------------------
function Pause( name )
    if (IsTimer( name )) then
        if (Timer[ name ].Status == TIMER_RUNNING) then
            Timer[ name ].Diff      = os.time() - Timer[ name ].Last;
            Timer[ name ].Status    = TIMER_PAUSED;
            return true;
        end
    end
    return false;
end

----------------------------------------------------------------------
-- func : Unpause
-- desc : Unpauses a timer.
----------------------------------------------------------------------
function Unpause( name )
    if (IsTimer( name )) then
        if (Timer[ name ].Status == TIMER_RUNNING) then
            Timer[ name ].Diff      = nil;
            Timer[ name ].Status    = TIMER_RUNNING;
            return true;
        end
    end
    return false;
end

----------------------------------------------------------------------
-- func : Toggle
-- desc : Toggles a timers status.
----------------------------------------------------------------------
function Toggle( name )
    if (IsTimer( name )) then
        if (Timer[ name ].Status == TIMER_PAUSED) then
            return Unpause( name );
        elseif (Timer[ name ].Status == TIMER_RUNNING) then
            return Pause( name );
        end
    end
    return false;
end

----------------------------------------------------------------------
-- func : Stop
-- desc : Stops a timer.
----------------------------------------------------------------------
function Stop( name )
    if (IsTimer( name )) then
        Timer[ name ].Status = TIMER_STOPPED;
        return true;
    end
    return false;
end

----------------------------------------------------------------------
-- func : Pulse
-- desc : Pulses all timers.
----------------------------------------------------------------------
function Pulse( name )
    
    -- Update each timer..
    for k, v in pairs( Timer ) do
        -- Update paused timer tick..
        if (v.Status == TIMER_PAUSED) then
            v.Last = os.time() - v.Diff;
        -- Update running timers..
        elseif (v.Status == TIMER_RUNNING and ( v.Last + v.Delay ) <= os.time()) then
            v.Last = os.time();
            v.n = v.n + 1;
            
            -- Attempt to call timer function..
            local a, b, c, d = pcall( v.Function, unpack( v.Args ) );
            if (a == nil or a == false) then
                print( '[LuaCast] Timer error: ' .. tostring( b ) );
            end
                
            -- Stop timers after rep count is met..
            if (v.n >= v.Reps and v.Reps > 0) then
                Stop( k );
            end
        end
    end
    
    -- Update once timers..
    for k, v in pairs( TimerOnce ) do
        -- Process finished timers..
        if (v.Finish <= os.time()) then
            local a, b, c, d = pcall( v.Function, unpack( v.Args ) );
            if (a == nil or a == false) then
                print( '[LuaCast] OnceTimer error: ' .. tostring( b ) );
            end
            
            -- Remove the timer..
            TimerOnce[ k ] = nil;
        end
    end

    return false;
end

events.Add( "onTimerPulse", "luaCast_TimerOnPulse", Pulse );
