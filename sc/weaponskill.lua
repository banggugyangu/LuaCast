function luacastWeaponSkill(cmd)
	local args = cmd:GetArgs();
	local meWS = AshitaCore:GetDataModule():GetPlayer().Player;
	
		if ((args[1] == '/ws' ) or (args[1] == '/weaponskill' ) ) then
		
		--Hand to Hand
			--Stringing Pummel
			if (args[2] == 'Stringing Pummel') then
			
				print('\30\28Current Gear:  Stringing Pummel\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Cirque Capello +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Soil Gorget"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Minuet Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Cirque Farsetto +1"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Cirque Guanti +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Potentia Cape"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Soil Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Cirque Pantaloni +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Cirque Scarpe +1"', CommandType.Menu);
		
		--Sword
		--Chant du Cygne
			elseif (args[2] == 'Chant du Cygne') then
				
				--Paladin
				if (meWS.MainJob == 7) then
					
					print('\30\28Current Gear:  Chant du Cygne (Paladin)\30\01');
					AshitaCore:GetDataModule():SendCommand('/equip head "Twilight Helm"');
					AshitaCore:GetDataModule():SendCommand('/equip neck "Chivalrous Chain"');
					AshitaCore:GetDataModule():SendCommand('/equip ear1 "Suppanomimi"');
					AshitaCore:GetDataModule():SendCommand('/equip ring2 "Ulthalam\'s Ring"');
					AshitaCore:GetDataModule():SendCommand('/equip waist "Light Belt"');
					AshitaCore:GetDataModule():SendCommand('/ws "Chant du Cygne" <t>');
					
				end
		
		--Great Sword
			--Torcleaver
			elseif (args[2] == 'Torcleaver') then
			
				--Paladin
				if (meWS.MainJob == 7) then
				
				
				
				--Dark Knight
				elseif (meWS.MainJob == 8) then
					
					print('\30\28Current Gear:  Torcleaver (DRK)\30\01')
					AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight helm"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip neck "Bale Choker"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip body "Ace\'s Mail"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip hands "Rheic mitts +3"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip waist "Snow Belt"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu);
					AshitaCore:GetDataModule():SendCommand( '/equip feet "Dilaram\'s Sollerets"', CommandType.Menu);
					
				end
				
		
		--Axe
			--Ruinator
			elseif (args[2] == 'Ruinator' ) then
				
				--WAR
				if (meWS.MainJob == 1 ) then
				
					print('\30\28Current Gear:  Ruinator (WAR)\30\01');
					AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip neck "Breeze Gorget"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip waist "Breeze Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip feet "Dilaram\'s Sollerets', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/ws "Ruinator" <t>', CommandType.Typed );
					
				elseif (meWS.MainJob == 9 ) then
				
					print('\30\28Current Gear:  Ruinator (BST)\30\01');
					AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip neck "Breeze Gorget"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip waist "Breeze Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip feet "Dilaram\'s Sollerets', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/ws "Ruinator" <t>', CommandType.Typed );
					
				end
				
		--Great Axe
			--Raging Rush
			elseif (args[2] == 'Raging Rush') then
				
				print('\30\28Current Gear:  Raging Rush\30\01')
				AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Snow Belt"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/ws "Raging Rush" <t>', CommandType.Typed );
			
			--King's Justice
			elseif (args[2] == 'King\'s Justice') then
			
				print('\30\28Current Gear: King\'s Justice\30\01')
				AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Breeze Gorget"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Breeze Belt"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Dilaram\'s Sollerets', CommandType.Menu );
				AshitaCore:GetDataModule():SendCommand( '/ws "King\'s Justice" <t>', CommandType.Typed );
				
		
			--Katana
				--Blade: Jin
			elseif (args[2] == 'Blade: Jin') then
	
					print('\30\28Current Gear:  Blade: Jin\30\01');
					--commands to equip gear for Blade: Jin
					AshitaCore:GetDataModule():SendCommand( '/equip head "Iga Zukin +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip neck "Breeze Gorget"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip body "Loki\'s Kaftan"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip hands "Iga Tekko +1"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip back "Nifty mantle"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip waist "Breeze Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip legs "Thurandaut tights"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip feet "Scopuli Nails"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/ws "Blade: Jin" <t>', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/p Blade: Jin ~~> <t>', CommandType.Typed );
					
				--Blade: Hi
			elseif (args[2] == 'Blade: Hi') then
	
					print('\30\28Current Gear:  Blade: Hi\30\01');
					--commands to equip gear for Blade: Jin
					AshitaCore:GetDataModule():SendCommand( '/equip head "Iga Zukin +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip neck "Soil gorget"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip body "Loki\'s Kaftan"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip hands "Seiryu\'s Kote"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling mantle"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip waist "Soil Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip legs "Iga Hakama +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip feet "Scopuli Nails"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/ws "Blade: Hi" <t>', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/p Blade: Hi ~~> <t>', CommandType.Typed );	
					
			--Great Katana
			
			--Tachi: Kasha
			elseif (args[2] == 'Tachi: Kasha') then
				
				--/DRG
				if (meWS.SubJob == 14) then
				
					print('\30\28Current Gear:  Tachi Kasha (SAM/DRG)\30\01');
					--Tachi: Kasha as SAM/DRG
					AshitaCore:GetDataModule():SendCommand('/equip head "Twilight Helm"', CommandType.Menu );		
					AshitaCore:GetDataModule():SendCommand('/equip neck "Chivalrous Chain"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ear1 "Fowling Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ear2 "Brutal Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip body "Ace\'s Mail"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip hands "Unkai kote +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ring1 "Victory ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ring2 "Rajas ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip back "Unkai Sugemino"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip waist "Light Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip legs "Unkai Haidate +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip feet "Unkai Sune-ate +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/ws "Tachi: Kasha" <t>', CommandType.Menu );
					
				elseif (meWS.Subjob == 1) then
				
					print('\30\28Current Gear:  Tachi Shoha (SAM/WAR)\30\01');
					--Tachi: Shoha as SAM/WAR
				
				end
			--Tachi: Shoha
			elseif (args[2] == 'Tachi: Shoha') then
				
				--/DRG
				if (meWS.SubJob == 14) then
				
					print('\30\28Current Gear:  Tachi Shoha (SAM/DRG)\30\01');
					--Tachi: Shoha as SAM/DRG
					AshitaCore:GetDataModule():SendCommand('/equip head "Twilight Helm"', CommandType.Menu );		
					AshitaCore:GetDataModule():SendCommand('/equip neck "Breeze Gorget"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ear1 "Fowling Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ear2 "Brutal Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip body "Ace\'s Mail"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip hands "Unkai kote +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ring1 "Victory ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip ring2 "Rajas ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip back "Unkai Sugemino"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip waist "Breeze Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip legs "Unkai Haidate +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/equip feet "Unkai Sune-ate +2"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand('/ws "Tachi: Shoha" <t>', CommandType.Menu );
				
				--/WAR
				elseif (meWS.Subjob == 1) then
				
					print('\30\28Current Gear:  Tachi Shoha (SAM/WAR)\30\01');
					--Tachi: Shoha as SAM/WAR
				
				end
			
			--Staff
				--Cataclysm
			elseif (args[2] == 'Cataclysm') then
				
				if (meWS.MainJob == 1 ) then
					
					print('\30\28Current Gear:  Cataclysm (Warrior)\30\01');
					AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Strophadic Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Hecate\'s Earring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Victory Ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip waist "Warwolf Belt"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/equip feet "Dilaram\'s Sollerets', CommandType.Menu );
					AshitaCore:GetDataModule():SendCommand( '/ws "Cataclysm" <t>', CommandType.Typed );
					
				end
				
			end
			
			timer.Once( 2, TP);
			
		elseif ((args[1] == '/attack') or (args[1] == '/a')) then
			
			if meWS.MainJob == 6 then
				
				timer.Once( 0, TreasureHunter );
				
			else
			
				timer.Once( 0, TP);
			
			end
			
		elseif ((args[1] == '/speed') ) then
		
			local player = AshitaCore:GetDataModule():GetEntityList():Find( 'Kurotenshi', 0 );

				if (player ~= nil) then
					-- Speed hax!
					player.MovementSpeed1   = 24;
				end
		
		elseif ((args[1] == '/speedoff' ) ) then
		
			local player = AshitaCore:GetDataModule():GetEntityList():Find( 'Kurotenshi', 0 );
				
				if (player ~= nil) then
					-- Speed hax!
					player.MovementSpeed1   = 4;
				
				end
				
		end
		
	end