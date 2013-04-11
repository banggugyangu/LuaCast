function luacastMagic(cmd)
	local args = cmd:GetArgs();
	local meFastCast = AshitaCore:GetDataModule():GetPlayer().Player;
	varTP = ( 0 );
		
		if ((args[1] == ('/ma')) or (args[1] == ('/magic')) or (args[1] == ('/song')) or (args[1] == ('/ninjutsu'))) then
		
			--Fast Cast
			--Warrior
			if meFastCast.MainJob == ( 1 ) then
			
				print('Current Gear:  Fast Cast (Warrior)');
			
			--Monk
			elseif meFastCast.MainJob == ( 2 ) then
			
				print('Current Gear:  Fast Cast (Monk)');
			
			--White Mage
			elseif meFastCast.MainJob == ( 3 ) then
				
				print('Current Gear: Fast Cast (White Mage)');
			
			--Black Mage
			elseif meFastCast.MainJob == ( 4 ) then
				
				print('Current Gear: Fast Cast (Black Mage)');
			
			--Red Mage
			elseif meFastCast.MainJob == ( 5 ) then
			
				print('Current Gear:  Fast Cast (Red Mage)');
				
			--Thief
			elseif meFastCast.MainJob == ( 6 ) then
			
				print('Current Gear:  Fast Cast (Thief)');
			
			--Paladin
			elseif meFastCast.MainJob == ( 7 ) then
			
				print('Current Gear:  Fast Cast (Paladin)');
			
			--Dark Knight
			elseif meFastCast.MainJob == ( 8 ) then
			
				print('Current Gear:  Fast Cast (Dark Knight)');
			
			--Beast Master
			elseif meFastCast.MainJob == ( 9 ) then
			
				print('Current Gear:  Fast Cast (Beast Master)');
			
			--Bard
			elseif meFastCast.MainJob == ( 10 ) then
			
				print('Current Gear:  Fast Cast (Bard)');
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Aoidos\' Matinee"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip back "Veela Cape"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Rostrum Pumps"', CommandType.Typed );
				
			end
			
			timer.Once( 0, PreCast(cmd) );
			
		end
end

function PreCast( cmd )
	local args = cmd:GetArgs();
	
	if (string.match( cmd, 'Ballad') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Ballad II') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad II" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Ballad III') ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad III" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Paeon') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Paeon II') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Paeon III') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Paeon IV') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Paeon V') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Paeon VI') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
					
	elseif (string.match( cmd, 'Advancing') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Advancing March" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Victory') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Victory March" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Minuet') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Minuet II') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet II" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Minuet III') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet III" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Minuet IV') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet IV" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Minuet V') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet V" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Sword') ) then
					
		AshitaCore:GetDataModule():SendCommand( '/ma "Sword Madrigal" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Blade') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Blade Madrigal" <me>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Battlefield') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Battlefield Elegy" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Carnage') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Carnage Elegy" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Light') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Light Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Dark') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Dark Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Fire') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Fire Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Water') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Water Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Lightning') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Lightning Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Earth') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Earth Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Wind') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Wind Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Ice') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Ice Threnody" <t>', CommandType.Typed );
		
	elseif (string.match( cmd, 'Finale') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Magic Finale" <t>', CommandType.Typed );
		
	end
	timer.Once( 4, MidCast(cmd) );
end