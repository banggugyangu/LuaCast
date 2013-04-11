function luacastMagic(cmd)
	local args = cmd:GetArgs();
	local meMagic = AshitaCore:GetDataModule():GetPlayer().Player;
	local job = meMagic.MainJob
	local spellName     = args[2];
    local spell = AshitaCore:GetResources():GetSpellByName( spellName );
	local FastCast = 0
		
	--Begin Fast Cast Segment--
	----Instructions!!----
	----Add all of the Fast Cast bonus you get through your Fast Cast gear on the given job.----
	----Change the number in the second parentheses to match the Fast Cast you gain from your gear.----
	local function jobFastCast(job)
		local inventory = AshitaCore:GetDataModule():GetInventory().Inventory;
		local SCHHead = inventory.Equipment[ 5 ];
		local SCHFeet = inventory.Equipment[ 9 ];
		local RDM = 0;
		local SCH = 0;
		local FC = 0;
		local ArtsH = 0
		local ArtsF = 0
		
		--Calculate Fast Cast from Job Traits and Abilities
		--DO NOT EDIT THE FOLLOWING LINES!--
		if ((meMagic.MainJob == 5)) then
			
			if meMagic.MainJobLVL >= 89 then
				
				RDM = (30);
				
			elseif ((meMagic.MainJobLVL < 89 ) and (meMagic.MainJobLVL >= 76 )) then
			
				RDM = (25);
			
			elseif ((meMagic.MainJobLVL < 76 ) and (meMagic.MainJobLVL >= 55 )) then
			
				RDM = (20);
				
			elseif ((meMagic.MainJobLVL < 55 ) and (meMagic.MainJobLVL >= 35 )) then
			
				RDM = (15);
				
			elseif ((meMagic.MainJobLVL < 35 ) and (meMagic.MainJobLVL >= 15 )) then
			
				RDM = (10);
				
			end
		
		elseif ((meMagic.MainJob == 20) or (meMagic.SubJob == 20) and (isBuffActive( 'Dark_Arts' ) ) or (isBuffActive( 'Light_Arts' ) ) then
		
			if ((SCHHead = 11480) and (SCHFeet = 15748)) then
				
				Arts = (10);
				
			elseif (((SCHHead = 11480) and not (SCHFeet = 15748)) or ((SCHFeet = 15748) and not (SCHHead = 11480))) then
		
				Arts = (5);
				
			else
			
				Arts = (0);
			
			end
		
		end
		
		FC = (RDM + Arts);
		--END OF CALCULATIONS--
		--Begin Editable Section--
		
		--WAR
		if job == 1 then
			
			FastCast = ( 1 - (0 + FC) );
		
		--MNK
		elseif job == 2 then
			
			FastCast = ( 1 - (0 + FC) );
		
		--WHM
		elseif job == 3 then
			
			FastCast = ( 1 - (0 + FC) );
			
		--BLM
		elseif job == 4 then
		
			FastCast = (1 - (0 + FC) );
			
		--RDM
		elseif job == 5 then
		
			FastCast = (1 - (0 + FC) );
			
		--THF
		elseif job == 6 then
		
			FastCast = (1 - (0 + FC) );
			
		--PLD
		elseif job == 7 then
		
			FastCast = (1 - (0 + FC) );
		
		--DRK
		elseif job == 8 then
		
			FastCast = (1 - (0 + FC) );
			
		--BST
		elseif job == 9 then
		
			FastCast = (1 - (0 + FC) );
			
		--BRD
		elseif job == 10 then
		
			FastCast = (1 - (0 + FC) );
			
		--RNG
		elseif job == 11 then
		
			FastCast = (1 - (0 + FC) );
			
		--SAM
		elseif job == 12 then
		
			FastCast = (1 - (0 + FC) );
		
		--NIN
		elseif job == 13 then
		
			FastCast = (1 - (0 + FC) );
			
		--DRG
		elseif job == 14 then
		
			FastCast = (1 - (0 + FC) );
		
		--SMN
		elseif job == 15 then
		
			FastCast = (1 - (0 + FC) );
			
		--BLU
		elseif job == 16 then
		
			FastCast = (1 - (0 + FC) );
			
		--COR
		elseif job == 17 then
		
			FastCast = (1 - (0 + FC) );
			
		--PUP
		elseif job == 18 then
		
			FastCast = (1 - (0 + FC) );
			
		--DNC
		elseif job == 19 then
		
			FastCast = (1 - (0 + FC) );
			
		--SCH
		elseif job == 20 then
		
			FastCast = (1 - (0 + FC) );
			
		--GEO
		elseif job == 21 then
		
			FastCast = (1 - (0 + FC) );
		
		--RUN
		elseif job == 22 then
		
			FastCast = (1 - (0 + FC) );
			
		end
		
	end
		
	end
			
	local castTime = (spell.Cast * FastCast )
		
		--Minimum 2 seconds cast time
		if (castTime <= 1) then
		
			castTime = (2);
		
		end
	
		if ((args[1] == ('/ma')) or (args[1] == ('/magic')) or (args[1] == ('/song')) or (args[1] == ('/ninjutsu'))) then

		
			--White Magic
				--Cure
			if (args[2] == ('Cure')) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Cure" <t>', CommandType.Typed );
				timer.Once( 1, Cure );
			
				--Cure II
			elseif (args[2] == ('Cure II')) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Cure II" <t>', CommandType.Typed );
				timer.Once( 1, Cure );
				
				--Cure III
			elseif (args[2] == ('Cure III')) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Cure III" <t>', CommandType.Typed );
				timer.Once( 1, Cure );
				
				--Cure IV
			elseif (args[2] == ('Cure IV')) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Cure IV" <t>', CommandType.Typed );
				timer.Once( 1, Cure );
				
				--Cure V
			elseif (args[2] == ('Cure V')) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Cure V" <t>', CommandType.Typed );
				timer.Once( 1, Cure );
				
				--Stoneskin
			elseif (args[2] == ('Stoneskin')) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Stoneskin" <me>', CommandType.Typed );
				timer.Once( 1, Stoneskin );
			
			
			
			
			--Bard Songs
				--Mage's Ballad
			elseif (args[2] == ('Mage\'s Ballad') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad" <me>', CommandType.Typed );
				timer.Once( 1, Ballad );
				
				--Mage's Ballad II
			elseif (args[2] == ('Mage\'s Ballad II') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad II" <me>', CommandType.Typed );
				timer.Once( 1, Ballad );
				
				--Mage's Ballad III
			elseif (args[2] == ('Mage\'s Ballad III') ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Mage\'s Ballad III" <me>', CommandType.Typed );
				timer.Once( 1, Ballad );
				
				--Army's Paeon
			elseif (args[2] == ('Army\'s Paeon') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
				timer.Once( 1, Paeon );
				
				--Army's Paeon II
			elseif (args[2] == ('Army\'s Paeon II') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
				timer.Once( 1, Paeon );
				
				--Army's Paeon III
			elseif (args[2] == ('Army\'s Paeon III') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
				timer.Once( 1, Paeon );
				
				--Army's Paeon IV
			elseif (args[2] == ('Army\'s Paeon IV') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
				timer.Once( 1, Paeon );
				
				--Army's Paeon V
			elseif (args[2] == ('Army\'s Paeon V') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
				timer.Once( 1, Paeon );
				
				--Army's Paeon VI
			elseif (args[2] == ('Army\'s Paeon VI') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Army\'s Paeon" <me>', CommandType.Typed );
				timer.Once( 1, Paeon );
				
				--Advancing March
			elseif (string.match( cmd, 'Advancing') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Advancing March" <me>', CommandType.Typed );
				timer.Once( 1, March );
				
				--Victory March
			elseif (string.match( cmd, 'Victory') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Victory March" <me>', CommandType.Typed );
				timer.Once( 1, March );
				
				--Valor Minuet
			elseif (string.match( cmd, 'Minuet') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet" <me>', CommandType.Typed );
				timer.Once( 1, Minuet );
				
				--Valor Minuet II
			elseif (args[2] == ('Valor Minuet II') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet II" <me>', CommandType.Typed );
				timer.Once( 1, Minuet );
				
				--Valor Minuet III
			elseif (args[2] == ('Valor Minuet III') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet III" <me>', CommandType.Typed );
				timer.Once( 1, Minuet );
				
				--Valor Minuet IV
			elseif (args[2] == ('Valor Minuet IV') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet IV" <me>', CommandType.Typed );
				timer.Once( 1, Minuet );
				
				--Valor Minuet V
			elseif (args[2] == ('Valor Minuet V') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Valor Minuet V" <me>', CommandType.Typed );
				timer.Once( 1, Minuet );
				
				--Sword Madrigal
			elseif (string.match( cmd, 'Sword') ) then
											
				AshitaCore:GetDataModule():SendCommand( '/ma "Sword Madrigal" <me>', CommandType.Typed );
				timer.Once( 1, Madrigal );
				
				--Blade Madrigal
			elseif (string.match( cmd, 'Blade') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Blade Madrigal" <me>', CommandType.Typed );
				timer.Once( 1, Madrigal );
				
				--Battlefield Elegy
			elseif (string.match( cmd, 'Battlefield') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Battlefield Elegy" <t>', CommandType.Typed );
				timer.Once( 1, Elegy );
				
				--Carnage Elegy
			elseif (string.match( cmd, 'Carnage') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Carnage Elegy" <t>', CommandType.Typed );
				timer.Once( 1, Elegy );
			
				--Threnodies
			elseif (string.match( cmd, 'Threnody' ) ) then
			
				if (string.match( cmd, 'Light') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Light Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Dark') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Dark Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Fire') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Fire Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Water') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Water Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Lightning') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Lightning Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Earth') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Earth Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Wind') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Wind Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				elseif (string.match( cmd, 'Ice') ) then
				
							AshitaCore:GetDataModule():SendCommand( '/ma "Ice Threnody" <t>', CommandType.Typed );
							timer.Once( 1, Threnody );
				
				end
				
				--Magic Finale
			elseif (string.match( cmd, 'Finale') ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Magic Finale" <t>', CommandType.Typed );
				timer.Once( 1, Finale );
				
				--Chocobo Mazurka
			elseif (string.match( cmd, 'Chocobo Mazurka' ) ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Chocobo Mazurka" <me>', CommandType.Typed );
				timer.Once( 1, Mazurka );
				
			--Ninjutsu
				--Utsusemi: Ichi
			elseif (args[2] == ('Utsusemi: Ichi') ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Utsusemi: Ichi" <me>', CommandType.Typed );
				timer.Once( 1, Utsusemi );
				
				--Utsusemi: Ni
				
			elseif (args[2] == ('Utsusemi: Ni') ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Utsusemi: Ni" <me>', CommandType.Typed );
				timer.Once( 1, Utsusemi );

				
			--Summoning Magic
				--Shiva
			elseif (string.match( cmd, 'Shiva' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Shiva" <me>', CommandType.Typed );
				timer.Once( 1, Shiva );
				
				--Ifrit
			elseif (string.match( cmd, 'Ifrit' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Ifrit" <me>', CommandType.Typed );
				timer.Once( 1, Ifrit );
				
				--Leviathan
			elseif (string.match( cmd, 'Leviathan' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Leviathan" <me>', CommandType.Typed );
				timer.Once( 1, Leviathan );
				
				--Ramuh
			elseif (string.match( cmd, 'Ramuh' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Ramuh" <me>', CommandType.Typed );
				timer.Once( 1, Ramuh );
				
				--Titan
			elseif (string.match( cmd, 'Titan' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Titan" <me>', CommandType.Typed );
				timer.Once( 1, Titan );
				
				--Garuda
			elseif (string.match( cmd, 'Garuda' ) ) then
				
				AshitaCore:GetDataModule():SendCommand( '/ma "Garuda" <me>', CommandType.Typed );
				timer.Once( 1, Garuda );
				
				--Carbuncle
			elseif (string.match( cmd, 'Carbuncle' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Carbuncle" <me>', CommandType.Typed );
				timer.Once( 1, Carbuncle );
			
				--Fenrir
			elseif (string.match( cmd, 'Fenrir' ) ) then
			
				AshitaCore:GetDataModule():SendCommand( '/ma "Fenrir" <me>', CommandType.Typed );
				timer.Once( 1, Fenrir );

			end
			
		timer.Once( castTime, kill );
		
end