function luacastMagic(cmd)
	local args = cmd:GetArgs();
	local meFastCast = AshitaCore:GetDataModule():GetPlayer().Player;
		
		if ((args[1] == ('/ma')) or (args[1] == ('/magic')) or (args[1] == ('/song')) or (args[1] == ('/ninjutsu'))) then
		
			--Fast Cast
			--Warrior
			if meFastCast.MainJob == ( 1 ) then
			
				print('\30\28Current Gear:  Fast Cast (Warrior)\30\01');
			
			--Monk
			elseif meFastCast.MainJob == ( 2 ) then
			
				print('\30\28Current Gear:  Fast Cast (Monk)\30\01');
			
			--White Mage
			elseif meFastCast.MainJob == ( 3 ) then
				
				print('\30\28Current Gear: Fast Cast (White Mage)\30\01');
			
			--Black Mage
			elseif meFastCast.MainJob == ( 4 ) then
				
				print('\30\28Current Gear: Fast Cast (Black Mage)\30\01');
			
			--Red Mage
			elseif meFastCast.MainJob == ( 5 ) then
			
				print('\30\28Current Gear:  Fast Cast (Red Mage)\30\01');
				
			--Thief
			elseif meFastCast.MainJob == ( 6 ) then
			
				print('\30\28Current Gear:  Fast Cast (Thief)\30\01');
			
			--Paladin
			elseif meFastCast.MainJob == ( 7 ) then
			
				print('\30\28Current Gear:  Fast Cast (Paladin)\30\01');
			
			--Dark Knight
			elseif meFastCast.MainJob == ( 8 ) then
			
				print('\30\28Current Gear:  Fast Cast (Dark Knight)\30\01');
			
			--Beast Master
			elseif meFastCast.MainJob == ( 9 ) then
			
				print('\30\28Current Gear:  Fast Cast (Beast Master)\30\01');
			
			--Bard
			elseif meFastCast.MainJob == ( 10 ) then
			
				print('\30\28Current Gear:  Fast Cast (Bard)\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Aoidos\' Matinee"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip back "Veela Cape"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Rostrum Pumps"', CommandType.Typed );
				
			--Ranger
			elseif meFastCast.MainJob == ( 11 ) then
			
				print('\30\28Current Gear:  Fast Cast (Ranger)\30\01');
				
			--Samurai
			elseif meFastCast.MainJob == ( 12 ) then
			
				print('\30\28Current Gear:  Fast Cast (Samurai)\30\01');
				
			--Ninja
			elseif meFastCast.MainJob == ( 13 ) then
			
				print('\30\28Current Gear:  Fast Cast (Ninja)\30\01');
				
			--Dragoon
			elseif meFastCast.MainJob == ( 14 ) then
			
				print('\30\28Current Gear:  Fast Cast (Dragoon)\30\01');
				
			--Summoner
			elseif meFastCast.MainJob == ( 15 ) then
			
				print('\30\28Current Gear:  Fast Cast (Summoner)\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip back "Veela Cape"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Rostrum Pumps"', CommandType.Typed );

			--Geomancer
			elseif meFastCast.MainJob == ( 21 ) then
			
				print('\30\28Current Gear:  Fast Cast (Geomancer)\30\01');
				
			--Rune Fencer
			elseif meFastCast.MainJob == ( 22 ) then
			
				print('\30\28CurrentGear:  Fast Cast (Rune Fencer)\30\01');
				
			end
			
			timer.Once( 0, PreCast(cmd) );
			
		end
		
end

function PreCast( cmd )
	local args = cmd:GetArgs();
		
	--White Magic
		--Cure
	if (args[2] == ('Cure')) then
		AshitaCore:GetDataModule():SendCommand( '/ma "Cure" <t>', CommandType.Typed );
		timer.Once( 1, Cure );
		timer.Once( 4, TP );
	
		--Cure II
	elseif (args[2] == ('Cure II')) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Cure II" <t>', CommandType.Typed );
		timer.Once( 1, Cure );
		timer.Once( 4, TP );
		
		--Cure III
	elseif (args[2] == ('Cure III')) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Cure III" <t>', CommandType.Typed );
		timer.Once( 1, Cure );
		timer.Once( 4, TP );
		
		--Cure IV
	elseif (args[2] == ('Cure IV')) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Cure IV" <t>', CommandType.Typed );
		timer.Once( 1, Cure );
		timer.Once( 4, TP );
		
		--Cure V
	elseif (args[2] == ('Cure V')) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Cure V" <t>', CommandType.Typed );
		timer.Once( 1, Cure );
		timer.Once( 4, TP );
		
		--Stoneskin
	elseif (args[2] == ('Stoneskin')) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Stoneskin" <me>', CommandType.Typed );
		timer.Once( 1, Stoneskin );
		timer.Once( 8, TP );
	
	--Bard Songs
		--Mage's Ballad
	elseif (args[2] == ('Mage\'s Ballad') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad" <me>', CommandType.Typed );
		timer.Once( 1, Ballad );
		timer.Once( 8, TP );
		
		--Mage's Ballad II
	elseif (args[2] == ('Mage\'s Ballad II') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad II" <me>', CommandType.Typed );
		timer.Once( 1, Ballad );
		timer.Once( 8, TP );
		
		--Mage's Ballad III
	elseif (args[2] == ('Mage\'s Ballad III') ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad III" <me>', CommandType.Typed );
		timer.Once( 1, Ballad );
		timer.Once( 8, TP );
		
		--Army's Paeon
	elseif (args[2] == ('Army\'s Paeon') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		timer.Once( 1, Paeon );
		timer.Once( 8, TP );
		
		--Army's Paeon II
	elseif (args[2] == ('Army\'s Paeon II') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		timer.Once( 1, Paeon );
		timer.Once( 8, TP );
		
		--Army's Paeon III
	elseif (args[2] == ('Army\'s Paeon III') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		timer.Once( 1, Paeon );
		timer.Once( 8, TP );
		
		--Army's Paeon IV
	elseif (args[2] == ('Army\'s Paeon IV') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		timer.Once( 1, Paeon );
		timer.Once( 8, TP );
		
		--Army's Paeon V
	elseif (args[2] == ('Army\'s Paeon V') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		timer.Once( 1, Paeon );
		timer.Once( 8, TP );
		
		--Army's Paeon VI
	elseif (args[2] == ('Army\'s Paeon VI') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
		timer.Once( 1, Paeon );
		timer.Once( 8, TP );
		
		--Advancing March
	elseif (string.match( cmd, 'Advancing') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Advancing March" <me>', CommandType.Typed );
		timer.Once( 1, March );
		timer.Once( 8, TP );
		
		--Victory March
	elseif (string.match( cmd, 'Victory') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Victory March" <me>', CommandType.Typed );
		timer.Once( 1, March );
		timer.Once( 8, TP );
		
		--Valor Minuet
	elseif (string.match( cmd, 'Minuet') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet" <me>', CommandType.Typed );
		timer.Once( 1, Minuet );
		timer.Once( 8, TP );
		
		--Valor Minuet II
	elseif (args[2] == ('Valor Minuet II') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet II" <me>', CommandType.Typed );
		timer.Once( 1, Minuet );
		timer.Once( 8, TP );
		
		--Valor Minuet III
	elseif (args[2] == ('Valor Minuet III') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet III" <me>', CommandType.Typed );
		timer.Once( 1, Minuet );
		timer.Once( 8, TP );
		
		--Valor Minuet IV
	elseif (args[2] == ('Valor Minuet IV') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet IV" <me>', CommandType.Typed );
		timer.Once( 1, Minuet );
		timer.Once( 8, TP );
		
		--Valor Minuet V
	elseif (args[2] == ('Valor Minuet V') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet V" <me>', CommandType.Typed );
		timer.Once( 1, Minuet );
		timer.Once( 8, TP );
		
		--Sword Madrigal
	elseif (string.match( cmd, 'Sword') ) then
					
		AshitaCore:GetDataModule():SendCommand( '/ma "Sword Madrigal" <me>', CommandType.Typed );
		timer.Once( 1, Madrigal );
		timer.Once( 8, TP );
		
		--Blade Madrigal
	elseif (string.match( cmd, 'Blade') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Blade Madrigal" <me>', CommandType.Typed );
		timer.Once( 1, Madrigal );
		timer.Once( 8, TP );
		
		--Battlefield Elegy
	elseif (string.match( cmd, 'Battlefield') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Battlefield Elegy" <t>', CommandType.Typed );
		timer.Once( 1, Elegy );
		timer.Once( 4, TP );
		
		--Carnage Elegy
	elseif (string.match( cmd, 'Carnage') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Carnage Elegy" <t>', CommandType.Typed );
		timer.Once( 1, Elegy );
		timer.Once( 4, TP );
	
		--Threnodies
	elseif (string.match( cmd, 'Threnody' ) ) then
	
		if (string.match( cmd, 'Light') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Light Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Dark') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Dark Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Fire') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Fire Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Water') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Water Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Lightning') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Lightning Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Earth') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Earth Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Wind') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Wind Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		elseif (string.match( cmd, 'Ice') ) then
		
			AshitaCore:GetDataModule():SendCommand( '/ma "Ice Threnody" <t>', CommandType.Typed );
			timer.Once( 1, Threnody );
			timer.Once( 4, TP );
		
		end
		
		--Magic Finale
	elseif (string.match( cmd, 'Finale') ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Magic Finale" <t>', CommandType.Typed );
		timer.Once( 1, Finale );
		timer.Once( 4, TP );
		
		--Chocobo Mazurka
	elseif (string.match( cmd, 'Chocobo Mazurka' ) ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Chocobo Mazurka" <me>', CommandType.Typed );
		timer.Once( 1, Mazurka );
		timer.Once( 5, TP );
		
	--Ninjutsu
		--Utsusemi: Ichi
	elseif (args[2] == ('Utsusemi: Ichi') ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Utsusemi: Ichi" <me>', CommandType.Typed );
		timer.Once( 1, Utsusemi );
		timer.Once( 8, TP );
		
		--Utsusemi: Ni
		
	elseif (args[2] == ('Utsusemi: Ni') ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Utsusemi: Ni" <me>', CommandType.Typed );
		timer.Once( 1, Utsusemi );
		timer.Once( 5, TP );

		
	--Summoning Magic
		--Shiva
	elseif (string.match( cmd, 'Shiva' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Shiva" <me>', CommandType.Typed );
		timer.Once( 1, Shiva );
		timer.Once( 8, TP );
		
		--Ifrit
	elseif (string.match( cmd, 'Ifrit' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Ifrit" <me>', CommandType.Typed );
		timer.Once( 1, Ifrit );
		timer.Once( 8, TP );
		
		--Leviathan
	elseif (string.match( cmd, 'Leviathan' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Leviathan" <me>', CommandType.Typed );
		timer.Once( 1, Leviathan );
		timer.Once( 8, TP );
		
		--Ramuh
	elseif (string.match( cmd, 'Ramuh' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Ramuh" <me>', CommandType.Typed );
		timer.Once( 1, Ramuh );
		timer.Once( 8, TP );
		
		--Titan
	elseif (string.match( cmd, 'Titan' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Titan" <me>', CommandType.Typed );
		timer.Once( 1, Titan );
		timer.Once( 8, TP );
		
		--Garuda
	elseif (string.match( cmd, 'Garuda' ) ) then
		
		AshitaCore:GetDataModule():SendCommand( '/ma "Garuda" <me>', CommandType.Typed );
		timer.Once( 1, Garuda );
		timer.Once( 8, TP );
		
		--Carbuncle
	elseif (string.match( cmd, 'Carbuncle' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Carbuncle" <me>', CommandType.Typed );
		timer.Once( 1, Carbuncle );
		timer.Once( 8, TP );
	
		--Fenrir
	elseif (string.match( cmd, 'Fenrir' ) ) then
	
		AshitaCore:GetDataModule():SendCommand( '/ma "Fenrir" <me>', CommandType.Typed );
		timer.Once( 1, Fenrir );
		timer.Once( 8, TP );

	end
	
end

--White Magic
	--Cure
function Cure()
	local meCure = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Paladin
	if meCure.MainJob == ( 7 ) then
		
		print('\30\28Current Gear:  Cure (Paladin)\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip head "Adaman Barbuta"', CommandType.Typed );
		
	--Bard
	elseif meCure.MainJob == ( 10 ) then
	
		print('\30\28Current Gear:  Cure (Bard)\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip main "Iridal Staff"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Augur\'s Gloves"', CommandType.Typed );
		
	end

end

	--Stoneskin
function Stoneskin()
	local meStoneskin = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Bard
	if meStoneskin.MainJob == ( 10 ) then
	
		print('\30\28Current Gear: Stoneskin (Bard)\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Stone Gorget"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Earthcry Earring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Siegel sash"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Haven Hose"', CommandType.Typed );
		
	end
	
end

--Summoning Magic
	--Garuda
function Garuda()
	local meGaruda = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Summoner
	if meGaruda.MainJob == ( 15 ) then
	
		print('\30\28Current Gear:  Garuda\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip main "Teiwaz"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Caller\'s Horn +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Caller\'s Pendant"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Insomnia Earring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Antivenom Earring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Caller\'s Doublet +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Caller\'s Bracers +1"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Evoker\'s Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Tiresias\' Cape"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Hierarch Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Augur\'s Brais"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Caller\'s Pigaches +2"', CommandType.Typed );
	
	end

end

--Songs
	--Paeon
function Paeon()
	local mePaeon = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Bard
	if mePaeon.MainJob == ( 10 ) then
									
		print('\30\28Current Gear:  Paeon\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
end

	--Ballad
function Ballad()
	local meBallad = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Bard
	if meBallad.MainJob == ( 10 ) then
			
		print('\30\28Current Gear:  Ballad\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Crooner\'s cithara"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
		
	end
end

	--March
function March()
	local meMarch = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Bard
	if meMarch.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  March\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Faerie Piccolo"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
		
	end
	
end

	--Finale
function Finale()
	local meFinale = AshitaCore:GetDataModule():GetPlayer().Player;
	
	--Bard
	if meFinale.MainJob == ( 10 ) then
			
		print('\30\28Current Gear:  Finale\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Ney"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Loyalty Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Airy Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Augur\'s Brais"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
	
end

	--Minuet
function Minuet()
	local meMinuet = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meMinuet.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Minuet\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Coronet +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end

end

	--Madrigal
function Madrigal()
	local meMadrigal = AshitaCore:GetDataModule():GetPlayer().Player;

	if meMadrigal.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Madrigal\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Cantabank\'s Horn"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
	
end

	--Prelude
function Prelude()
	local mePrelude = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if mePrelude.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Prelude\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Cantabank\'s Horn"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
	
end

	--Minne
function Minne()
	local meMinne = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meMinne.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Minne\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Syrinx"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end

end

	--Mazurka
function Mazurka()
	local meMazurka = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meMazurka.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Mazurka\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Vihuela"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
		
	end
	
end

	--Mambo
function Mambo()
	local meMambo = AshitaCore:GetDataModule():getPlayer().Player;
	
	if meMambo.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Mambo\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Vihuela"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
	
end

	--Etude
function Etude()
	local meEtude = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meEtude.MainJob == ( 10 ) then
		
		print('\30\28Current Gear:  Etude\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Rose Harp +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Nereid Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Aoidos\' Rhingrave +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
	
end

	--Elegy
function Elegy()
	local meElegy = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meElegy.MainJob == ( 10 ) then
						
		print('\30\28Current Gear:  Elegy\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Syrinx"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Loyalty Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Airy Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Augur\'s Brais"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end
	
end

	--Threnody
function Threnody()
	local meThrenody = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meThrenody.MainJob == ( 10 ) then
							
		print('\30\28Current Gear:  Threnody\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip sub "Amicus Grip"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip range "Sorrowful Harp"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip head "Aoidos\' Calot +2"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip neck "Barcarolle Medal"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Melody Earring +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Skald Breloque"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip body "Aoidos\' Hongreline +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip hands "Aoidos\' Manchettes +2"', CommandType.Typed);
		AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Loyalty Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Airy Ring"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip back "Jester\'s Cape +1"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip waist "Aristo Belt"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip legs "Augur\'s Brais"', CommandType.Typed );
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes +2"', CommandType.Typed );
	
	end

end

--Ninjutsu
	--Utsusemi
function Utsusemi()
	local meUtsusemi = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if meUtsusemi.MainJob == ( 13 ) then
		
		print('\30\28Current Gear:  Utsusemi (NIN)\30\01');
		AshitaCore:GetDataModule():SendCommand( '/equip feet "Iga Kyahan +2"', CommandType.Typed );
		
	end
	
end