function TP()
	local meTP = AshitaCore:GetDataModule():GetPlayer().Player;
	local buffIndex = AshitaCore:GetDataModule():GetParty().Member[1].TargetIndex;
    local plBuff = AshitaCore:GetDataModule():GetEntityList():At( buffIndex );
		
		--WARRIOR
		if (meTP.MainJob == 1) then
			
			--/SAM
			if (meTP.SubJob == 12 ) then
			
				print('\30\28Current Gear:  Warrior/Samurai TP\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Ravager\'s Mask +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Rvg. Lorica +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Rvg. Mufflers +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Rvg. Cuisses +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Rvg. Calligae +2"', CommandType.Menu);
			
			--/NIN
			elseif (meTP.SubJob == 13 ) then
			
				print('\30\28\30\28Current Gear:  Warrior/Ninja TP\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Ravager\'s Mask +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Rvg. Lorica +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Rvg. Mufflers +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Rvg. Cuisses +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Rvg. Calligae +2"', CommandType.Menu);
				
			--/DNC
			elseif (meTP.SubJob == 19 ) then
			
				print('\30\28Current Gear:  Warrior/Dancer TP\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Ravager\'s Mask +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Rvg. Lorica +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Rvg. Mufflers +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Rvg. Cuisses +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Rvg. Calligae +2"', CommandType.Menu);
				
			end
		
		--THIEF
		elseif (meTP.MainJob == 6) then
			
			--Prevents removal of Sneak Attack or Trick Attack gear until the gear wears off
			if ((isBuffActive( 'Sneak_Attack' ) or (isBuffActive( 'Trick_Attack' )))) then
			
				timer.Once( 2, TP );
			
			else
			
				print('\30\28Current Gear:  Thief TP\30\01\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Raider\'s Bonnet +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Raider\'s Vest +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Brego Gloves"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Raider\'s Culottes +1"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Ballerines"', CommandType.Menu);
		
			end
			
			
		--PALADIN
		elseif (meTP.MainJob == 7) then
		
			print('\30\28Current Gear:  Paladin TP\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip head "Creed Armet +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Creed Collar"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Creed Cuirass +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Crd. Gauntlets +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Rajas Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Ulthalam\'s Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Creed Cuisses +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Creed Sabatons +2"', CommandType.Menu);
			
			
		--Dark Knight
		elseif (meTP.MainJob == 8) then
		
			print('\30\28Current Gear:  Dark Knight TP\30\01');
			AshitaCore:GetDataModule():SendCommand( '/equip head "Bale burgeonet +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Bale Choker"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Ace\'s Mail"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Bale Gauntlets +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Ace\'s Leggings"', CommandType.Menu);
			
		--Beast Master
		elseif (meTP.MainJob == 9) then
		
			print('\30\28Current Gear:  Beast Master TP\30\01');
			AshitaCore:GetDataModule():SendCommand( '/equip head "Ferine Cabasset +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Ogier\'s Surcoat"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Ferine Manoplas+2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Ferine Quijotes +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Ferine Ocreae +2"', CommandType.Menu);
			
		--SAMURAI
		elseif (meTP.MainJob == 12) then
			
			--/DRG
			if (meTP.SubJob == 14) then
			
				print('\30\28Current Gear:  Samurai/Dragoon TP\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Unkai Kabuto +2"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Wyvern Earring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip body "Unkai Domaru +2"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Brego Gloves"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Unkai Haidate +2"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Ace\'s Leggings"', CommandType.Typed );
			
			--Any other SubJob
			else
			
				print('\30\28Current Gear:  Samurai/Dragoon TP\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Unkai Kabuto +2"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Minuet Earring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip body "Ace\'s Mail"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Brego Gloves"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Unkai Haidate +2"', CommandType.Typed );
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Ace\'s Leggings"', CommandType.Typed );
				
			end
			
			
		--NINJA
		elseif (meTP.MainJob == 13) then
			
			print('\30\28Current Gear:  Ninja TP\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip head "Iga Zukin +2"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip body "Ninja Chainmail"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Thurandaut Gloves"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Iga Hakama +2"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Iga Kyahan +2"', CommandType.Typed );
			
		--PuppetMaster
		elseif (meTP.MainJob == 18 ) then
		
			print('\30\28Current Gear:  PuppetMaster TP\30\01');
			AshitaCore:GetDataModule():SendCommand( '/equip head "Cirque Capello +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Minuet Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Cirque Farsetto +1"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Cirque Guanti +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Potentia Cape"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Cirque Pantaloni +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Aurore Gaiters"', CommandType.Menu);
		
		--Rune Fencer
		elseif (meTP.MainJob == 22 ) then
		
			print('\30\28Current Gear:  Rune Fencer TP\30\01');
			
		end
		
	timer.Create( "timerKill", 2, 0, kill );
	
end

function TreasureHunter()
	
	print('\30\28Current Gear:  Treasure Hunter\30\01');
	AshitaCore:GetDataModule():SendCommand( '/equip hands "Assassin\'s Armlets"', CommandType.Typed );
	AshitaCore:GetDataModule():SendCommand( '/equip feet "Raider\'s Poulaines +2"', CommandType.Typed );
	timer.Once( 9, TP );
	
end