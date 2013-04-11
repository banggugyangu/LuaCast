--[[

 * vanatime.lua - Vanadiel time helper definitions.
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
-- Moon Phase Definitions
----------------------------------------------------------------------
MOONPHASE_NEW               = 0;
MOONPHASE_WAXINGCRESCENT    = 1;
MOONPHASE_WAXINGCRESCENT2   = 2;
MOONPHASE_FIRSTQUARTER      = 3;
MOONPHASE_WAXINGGIBBOUS     = 4;
MOONPHASE_WAXINGGIBBOUS2    = 5;
MOONPHASE_FULL              = 6;
MOONPHASE_WANINGGIBBOUS     = 7;
MOONPHASE_WANINGGIBBOUS2    = 8;
MOONPHASE_LASTQUARTER       = 9;
MOONPHASE_WANINGCRESCENT    = 10;
MOONPHASE_WANINGCRESCENT2   = 11;
MOONPHASE_UNKNOWN           = 12;

----------------------------------------------------------------------
-- Weekday Definitions
----------------------------------------------------------------------
WEEKDAY_FIRESDAY            = 0;
WEEKDAY_EARTHSDAY           = 1;
WEEKDAY_WATERSDAY           = 2;
WEEKDAY_WINDSDAY            = 3;
WEEKDAY_ICEDAY              = 4;
WEEKDAY_LIGHTNINGDAY        = 5;
WEEKDAY_LIGHTSDAY           = 6;
WEEKDAY_DARKSDAY            = 7;
WEEKDAY_UNKNOWN             = 8;

-- VanaTime object..
local VanaTime = { };

-- VanaTime signature information..
VanaTime.PTR_SIGNATURE      = { 0xB0, 0x01, 0x5E, 0xC3, 0x90, 0x51, 0x8B, 0x4C, 0x24, 0x08, 0x8D, 0x44, 0x24, 0x00, 0x50, 0x68 };
VanaTime.PTR_MASK           = "xxxxxxxxxxxxxxxx";
VanaTime.VANATIME_POINTER   = FindPattern( VanaTime.PTR_SIGNATURE, #VanaTime.PTR_SIGNATURE, VanaTime.PTR_MASK ) + 0x34

-- Signature validation..
if (VanaTime.VANATIME_POINTER == 0) then
    error( 'vanatime.lua -- Signature validation failed.' );
end

----------------------------------------------------------------------
-- func : VanaTime.GetRawTimestamp()
-- desc : Obtains the current raw timestamp of the VanaTime.
----------------------------------------------------------------------
function VanaTime.GetRawTimestamp()
    local pointer   = ReadLong( VanaTime.VANATIME_POINTER );
    local timestamp = ReadULong( pointer + 0x0C );
    return timestamp;
end

----------------------------------------------------------------------
-- func : VanaTime.GetCurrentTimestamp()
-- desc : Obtains the current timestamp.
----------------------------------------------------------------------
function VanaTime.GetCurrentTimestamp()
    local timestamp = VanaTime.GetRawTimestamp();
    local timeInSec = ( timestamp + 92514960 ) * 25;
    local hour = ( timeInSec / 3600 ) % 24;
    local mins = ( timeInSec / 60 ) % 60;
    local secs = ( ( timeInSec - ( math.floor( timeInSec / 60 ) * 60 ) ) );
    return string.format( '%02i:%02i:%02i', hour, mins, secs );
end

----------------------------------------------------------------------
-- func : VanaTime.GetCurrentTime()
-- desc : Obtains the current time.
----------------------------------------------------------------------
function VanaTime.GetCurrentTime()
    local timestamp = VanaTime.GetRawTimestamp();
    local timeInSec = ( timestamp + 92514960 ) * 25;
    
    local vanaTime      = { };
    vanaTime.Hour       = ( timeInSec / 3600 ) % 24;
    vanaTime.Minutes    = ( timeInSec / 60 ) % 60;
    vanaTime.Seconds    = ( ( timeInSec - ( math.floor( timeInSec / 60 ) * 60 ) ) );
    
    return vanaTime;
end

----------------------------------------------------------------------
-- func : VanaTime.GetCurrentHour()
-- desc : Obtains the current hour in Vana time.
----------------------------------------------------------------------
function VanaTime.GetCurrentHour()
    local timestamp = VanaTime.GetRawTimestamp();
    local timeInSec = ( timestamp + 92514960 ) * 25;
    local hour = ( timeInSec / 3600 ) % 24;
    return hour;
end

----------------------------------------------------------------------
-- func : VanaTime.GetCurrentMinute()
-- desc : Obtains the current minutes in Vana time.
----------------------------------------------------------------------
function VanaTime.GetCurrentMinute()
    local timestamp = VanaTime.GetRawTimestamp();
    local timeInSec = ( timestamp + 92514960 ) * 25;
    local mins = ( timeInSec / 60 ) % 60;
    return mins;
end

----------------------------------------------------------------------
-- func : VanaTime.GetCurrentSecond()
-- desc : Obtains the current seconds in Vana time.
----------------------------------------------------------------------
function VanaTime.GetCurrentSecond()
    local timestamp = VanaTime.GetRawTimestamp();
    local timeInSec = ( timestamp + 92514960 ) * 25;
    local secs = ( ( timeInSec - ( math.floor( timeInSec / 60 ) * 60 ) ) );
    return secs;
end

----------------------------------------------------------------------
-- func : VanaTime.GetCurrentDate()
-- desc : Obtains the current Vana date.
----------------------------------------------------------------------
function VanaTime.GetCurrentDate()
    local timestamp = VanaTime.GetRawTimestamp();
    local timeInSec = ( timestamp + 92514960 ) * 25;
    local dayOfYear = math.floor( timeInSec / 86400 );
    
    local moonPhase     = ( dayOfYear + 26 ) % 84;
    local moonPercent   = ( ( ( 42 - moonPhase ) * 100 ) / 42 );
    
    if (0 > moonPercent) then
        moonPercent = math.abs( moonPercent );
    end
    
    local vanaDate      = { };
    vanaDate.WeekDay    = ( dayOfYear % 8 );
    vanaDate.Day        = ( dayOfYear % 30 ) + 1;
    vanaDate.Month      = ( ( dayOfYear % 360 ) / 30 ) + 1;
    vanaDate.Year       = ( dayOfYear / 360 );
    vanaDate.MoonPercent= math.floor( moonPercent + 0.5 );
    
    if (38 <= moonPhase) then
        vanaDate.MoonPhase = math.floor( ( moonPhase - 38 ) / 7 );
    else
        vanaDate.MoonPhase = math.floor( ( moonPhase + 46 ) / 7 );
    end    
    
    return vanaDate;
end

----------------------------------------------------------------------
-- Return the VanaTime table..
----------------------------------------------------------------------
return VanaTime;
