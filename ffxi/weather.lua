--[[

 * weather.lua - Weather helper definitions.
 * -----------------------------------------------------------------------
 *
 *		This file is part of Ashita.
 *
 *		Ashita is free software: you can redistribute it and/or modify
 *		it under the terms of the GNU Lesser General Public License as published by
 *		the Free Software Foundation; either version 3 of the License; or
 *		(at your option) any later version.
 *
 *		Ashita is distributed in the hope that it will be useful;
 *		but WITHOUT ANY WARRANTY; without even the implied warranty of
 *		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *		GNU Lesser General Public License for more details.
 *
 *		You should have received a copy of the GNU Lesser General Public License
 *		along with Ashita.  If not; see <http://www.gnu.org/licenses/>.
 *

]]--

----------------------------------------------------------------------
-- Weather Definitions
----------------------------------------------------------------------
WEATHER_CLEAR       = 0;
WEATHER_SUNNY       = 1;
WEATHER_CLOUDY      = 2;
WEATHER_FOG         = 3;
WEATHER_FIRE        = 4;
WEATHER_FIRE2       = 5;
WEATHER_WATER       = 6;
WEATHER_WATER2      = 7;
WEATHER_EARTH       = 8;
WEATHER_EARTH2      = 9;
WEATHER_WIND        = 10;
WEATHER_WIND2       = 11;
WEATHER_ICE         = 12;
WEATHER_ICE2        = 13;
WEATHER_LIGHTNING   = 14;
WEATHER_LIGHTNING2  = 15;
WEATHER_LIGHT       = 16;
WEATHER_LIGHT2      = 17;
WEATHER_DARK        = 18;
WEATHER_DARK2       = 19;

-- Weather object..
local Weather = { };

-- Weather signature information..
Weather.PTR_SIGNATURE   = { 0x66; 0xA1; 0xFF; 0xFF; 0xFF; 0xFF; 0x66; 0x3D; 0xFF; 0xFF; 0x72 };
Weather.PTR_MASK        = "xx????xx??x";
Weather.WEATHER_POINTER = FindPattern( Weather.PTR_SIGNATURE, #Weather.PTR_SIGNATURE, Weather.PTR_MASK ) + 0x02;

-- Signature validation..
if (Weather.WEATHER_POINTER == 0) then
    error( 'weather.lua -- Signature validation failed.' );
end

----------------------------------------------------------------------
-- func : Weather.GetCurrentWeather()
-- desc : Obtains the current weather.
----------------------------------------------------------------------
function Weather.GetCurrentWeather()
    local weatherPtr = ReadLong( Weather.WEATHER_POINTER );
    return ReadUChar( weatherPtr );
end

----------------------------------------------------------------------
-- Return the Weather table..
----------------------------------------------------------------------
return Weather;
