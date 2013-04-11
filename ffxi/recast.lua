--[[

 * recast.lua - Recast helper definitions.
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

-- Recast object..
local Recast = { };

-- Recast signature information..
Recast.A_RECAST_SIGNATURE    = { 0x89, 0x41, 0x24, 0xE9, 0xFF, 0xFF, 0xFF, 0xFF, 0x8B, 0x47, 0x2C, 0x6A, 0x00, 0x6A, 0x00, 0x50, 0x8B, 0xCF, 0xE8 };
Recast.S_RECAST_SIGNATURE    = { 0x56, 0xBE, 0xFF, 0xFF, 0xFF, 0xFF, 0x66, 0x83, 0x3E, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x66, 0x29, 0x06 };
Recast.A_RECAST_MASK         = "xxxx????xxxxxxxxxxx";
Recast.S_RECAST_MASK         = "xx????xxxx???????xxx";

-- Recast signature scanning..
Recast.A_RECAST_POINTER      = FindPattern( Recast.A_RECAST_SIGNATURE, #Recast.A_RECAST_SIGNATURE, Recast.A_RECAST_MASK );
Recast.S_RECAST_POINTER      = FindPattern( Recast.S_RECAST_SIGNATURE, #Recast.S_RECAST_SIGNATURE, Recast.S_RECAST_MASK );

-- Signature validation..
if (Recast.A_RECAST_POINTER == 0 or Recast.S_RECAST_POINTER == 0) then
    print( string.format( 'Ability Pointer: 0x%08X', Recast.A_RECAST_POINTER ) );
    print( string.format( 'Spell Pointer  : 0x%08X', Recast.S_RECAST_POINTER ) );
    error( 'recast.lua -- Signature validation failed.' );
end

-- Read recast pointers..
Recast.A_RECAST_POINTER = ReadLong( Recast.A_RECAST_POINTER + 0x19 );
Recast.S_RECAST_POINTER = ReadLong( Recast.S_RECAST_POINTER + 0x02 );

----------------------------------------------------------------------
-- func : Recast.GetAbilityRecastIds()
-- desc : Obtains the current list of usuable ability ids.
----------------------------------------------------------------------
function Recast.GetAbilityRecastIds()
    local t = { };
    for x = 0, 32 do t[ x + 1 ] = ReadUChar( Recast.A_RECAST_POINTER + ( x * 4 ) + 3 ); end
    return t;
end

----------------------------------------------------------------------
-- func : Recast.GetAbilityRecastIdFromIndex( index )
-- desc : Obtains the current list of usuable ability ids.
----------------------------------------------------------------------
function Recast.GetAbilityRecastIdFromIndex( index )
    return ReadUChar( Recast.A_RECAST_POINTER + ( index * 4 ) + 3 );
end

----------------------------------------------------------------------
-- func : Recast.GetAbilityRecastByIndex()
-- desc : Obtains an abilities recast by its index.
----------------------------------------------------------------------
function Recast.GetAbilityRecastByIndex( index )
    return ReadULong( Recast.A_RECAST_POINTER + ( index * 4 ) + 0x7C );
end

----------------------------------------------------------------------
-- func : Recast.GetAbilityRecastById()
-- desc : Obtains an abilities recast by its id.
----------------------------------------------------------------------
function Recast.GetAbilityRecastById( id )
    local abilityIds = Recast.GetAbilityRecastIds();
    for k, v in pairs( abilityIds ) do
        if (v == id) then return Recast.GetAbilityRecastByIndex( k - 1 ); end
    end
    return -1;
end

----------------------------------------------------------------------
-- func : Recast.GetSpellRecastByIndex()
-- desc : Obtains a spells recast by its index.
----------------------------------------------------------------------
function Recast.GetSpellRecastByIndex( index )
    return ReadUShort( Recast.S_RECAST_POINTER + ( index * 2 ) );
end

----------------------------------------------------------------------
-- func : Recast.FormatTimestamp()
-- desc : Formats a recast timer into a timestamp.
----------------------------------------------------------------------
function Recast.FormatTimestamp( timer )
    local abilityTimer = timer / 60;
    local hour = math.floor( abilityTimer / ( 60 * 60 ) );
    local mins = math.floor( abilityTimer / 60 - hour * 60 );
    local secs = math.floor( abilityTimer - ( mins + hour * 60 ) * 60 );
    return string.format( '%02i:%02i:%02i', hour , mins, secs );
end

----------------------------------------------------------------------
-- Return the Recast table..
----------------------------------------------------------------------
return Recast;
