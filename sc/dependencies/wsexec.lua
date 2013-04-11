function luacastWeaponSkill(cmd)
	local args = cmd:GetArgs();
	local meWS = AshitaCore:GetDataModule():GetPlayer().Player;
	
		if ((args[1] == '/ws' ) or (args[1] == '/weaponskill' ) ) then
		
		--Hand to Hand
			--Stringing Pummel
			if (args[2] == 'Stringing Pummel') then
			
				timer.Once( 0, StringingPummel );
		
		--Sword
		--Chant du Cygne
			elseif (args[2] == 'Chant du Cygne') then
				
				--Paladin
				if (meWS.MainJob == 7) then
					
					timer.Once( 0, ChantDuCygnePLD );
					
				end
		
		--Great Sword
			--Torcleaver
			elseif (args[2] == 'Torcleaver') then
			
				--Paladin
				if (meWS.MainJob == 7) then
				
					timer.Once( 0, TorcleaverPLD );
				
				--Dark Knight
				elseif (meWS.MainJob == 8) then
					
					timer.Once( 0, TorcleaverDRK );
					
				end
				
		
		--Axe
			--Ruinator
			elseif (args[2] == 'Ruinator' ) then
				
				--WAR
				if (meWS.MainJob == 1 ) then
				
					timer.Once( 0, RuinatorWAR );
					
				elseif (meWS.MainJob == 9 ) then
				
					timer.Once( 0, RuinatorBST );
					
				end
				
		--Great Axe
			--Raging Rush
			elseif (args[2] == 'Raging Rush') then
				
				timer.Once( 0, RagingRushWAR );
			
			--King's Justice
			elseif (args[2] == 'King\'s Justice') then
			
				timer.Once( 0, KingsJustice );
				
		
			--Katana
				--Blade: Jin
			elseif (args[2] == 'Blade: Jin') then
	
					timer.Once( 0, Jin );
					
				--Blade: Hi
			elseif (args[2] == 'Blade: Hi') then
	
					timer.Once( 0, Hi );
					
			--Great Katana
			--Tachi: Kasha
			elseif (args[2] == 'Tachi: Kasha') then
				
				--/DRG
				if (meWS.SubJob == 14) then
				
					timer.Once( 0, KashaDRG );
					
				elseif (meWS.Subjob == 1) then
				
					timer.Once( 0, KashaWAR );
				
				end
			--Tachi: Shoha
			elseif (args[2] == 'Tachi: Shoha') then
				
				--/DRG
				if (meWS.SubJob == 14) then
				
					timer.Once( 0, ShohaDRG );
				
				--/WAR
				elseif (meWS.Subjob == 1) then
				
					timer.Once( 0, ShohaWAR );
				
				end
			
			--Staff
				--Cataclysm
			elseif (args[2] == 'Cataclysm') then
				
				if (meWS.MainJob == 1 ) then
					
					timer.Once( 0, CataclysmWAR );
					
				end
				
			end
			
			timer.Once( 1, TP);
			
		end
		
end