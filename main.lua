--[[

 * main.lua - Main Lua script.
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

-----------------------------------------------------------------------
-- DO NOT EDIT THE LINES BELOW!
-----------------------------------------------------------------------
    -- Include helpful headers..
    require( "events" );

    -- Include extension files..
    require( "extensions/math" );
    require( "extensions/string" );
    require( "extensions/table" );
    require( "extensions/timer" );
        
    -- Include Final Fantasy Headers
    require( "ffxi/common" );
    require( "ffxi/inventory" );
    
    Recast      = require( "ffxi/recast" );
    VanaTime    = require( "ffxi/vanatime" );
    Weather     = require( "ffxi/weather" );
    
-----------------------------------------------------------------------
-- DO NOT EDIT THE LINES ABOVE!
-----------------------------------------------------------------------
    
----------------------------------------------------------------------
-- func : onHandleCommand
-- desc : Event callback for onHandleCommand event.
----------------------------------------------------------------------
function onHandleCommand( cmd, nType )
    -- Parse the command into arguments..
    local args = cmd:GetArgs();
    
    -- Validate this is a LuaCast command..
    if (args[1] ~= "/luacast") then
        return false;
    end
    
    -- Handle LuaCast wave command..
    if (args[2] == 'wave') then
        AshitaCore:GetDataModule():SendCommand( '/wave', CommandType.Typed );
        return true;
    end
    
    return false;
end
events.Add( "onHandleCommand", "luaCast_onHandleCommand", onHandleCommand );

----------------------------------------------------------------------
-- func : onHandleNewChatLine
-- desc : Event callback for onHandleNewChatLine event.
----------------------------------------------------------------------
function onHandleNewChatLine( nMode, text )
    return false;
end
events.Add( "onHandleNewChatLine", "luaCast_onHandleNewChatLine", onHandleNewChatLine );

----------------------------------------------------------------------
-- func : onHandleOutgoingPacket
-- desc : Event callback for onHandleOutgoingPacket event.
----------------------------------------------------------------------
function onHandleOutgoingPacket( size, packet )
    local offset, packetId, packetSize, packetCount = bunpack( packet, "bbH" );
    
    -- Ensure to return false so we do not block the packet!!
    return false;
end
events.Add( "onHandleOutgoingPacket", "luaCast_onHandleOutgoingPacket", onHandleOutgoingPacket );

----------------------------------------------------------------------
-- func : onHandleIncomingPacket
-- desc : Event callback for onHandleIncomingPacket event.
----------------------------------------------------------------------
function onHandleIncomingPacket( size, packet )
    local offset, packetId, packetSize, packetCount = bunpack( packet, "bbH" ); 
    
    -- Ensure to return false so we do not block the packet!!
    return false;
end
events.Add( "onHandleIncomingPacket", "luaCast_onHandleIncomingPacket", onHandleIncomingPacket );

--Spellcast
require ( 'sc/weaponskill' )
require ( 'sc/jobability' )
require ( 'sc/jobconvert' )
require ( 'sc/magic' )
require ( 'sc/petability' )
require ( 'sc/TP' )
require ( 'sc/idle' )
require ( 'ffxi/buff' )
require ( 'plugins/gotSushi' )

function onHandleCommand( cmd,nType )

	luacastWeaponSkill(cmd)
	return true;
	
end
events.Add( "onHandleCommand", "luacastWeaponSkill", luacastWeaponSkill );

function onHandleCommand( cmd,nType )

	luacastJA(cmd)
	return true;
	
end
events.Add( "onHandleCommand", "luacastJA", luacastJA );

function onHandleCommand( cmd,nType )

	luacastMagic(cmd)
	return true;
	
end
events.Add( "onHandleCommand", "luacastMagic", luacastMagic );

function onHandleCommand( cmd,nType )

	luacastPet(cmd)
	return true;
	
end
events.Add( "onHandleCommand", "luacastPet", luacastPet );

--Stun Script
function IsStunableAbility(chatline)
	local stunableabilities = {"Tyrant Tusk", "Stonega III", "Stonega IV", "Stoneja", "Waterga III", "Waterga IV", "Waterja", "Aeroga III", "Aeroga IV", "Aeroja", "Firaga III", "Firaga IV", "Firaja", "Blizzaga III", "Blizzaga IV", "Blizzaja", "Thundaga III", "Thundaga IV", "Thundaja", "Paralyga", "Dispelga", "Bindga"};
	local meStun = AshitaCore:GetDataModule():GetPlayer().Player;
	for i=1,#stunableabilities do
		if string.find(chatline,nocase(stunableabilities[i])) then
			if ((meStun.MainJob == (4)) or (meStun.SubJob == (4))) then
				AshitaCore:GetDataModule():SendCommand( '/ma Stun <bt>', CommandType.Typed );
			elseif ((meStun.MainJob == (19)) or (meStun.SubJob == (19))) then
				AshitaCore:GetDataModule():SendCommand( '/ja "Violent Flourish" <bt>', CommandType.Typed );
			end
		end
	end
end

function nocase (s)
      s = string.gsub(s, "%a", function (c)
            return string.format("[%s%s]", string.lower(c),
                                           string.upper(c))
          end)
      return s
    end