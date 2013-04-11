function idle()
	local pindex = AshitaCore:GetDataModule():GetParty().Member[1].TargetIndex;
    local player = AshitaCore:GetDataModule():GetEntityList():At( pindex );
	local meIdle = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if player.Status == ( 1 ) then
	
	elseif player.Status == ( 0 ) then
		
		
		--WARRIOR
		if meIdle.MainJob == ( 1 ) then
			
			print('\30\28Current gear:  Warrior Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand('/equip head "Ogier\'s Helm"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip neck "Twilight Torque"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ear1 "Fowling Earring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ear2 "Brutal Earring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip body "Ravager\'s Lorica +2"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip hands "Ravager\'s Mufflers +2"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ring1 "Dark Ring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ring2 "Dark Ring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip back "Metallon Mantle"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip waist "Nierenschutz"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip legs "Ravager\'s Cuisses +2"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip feet "Rheic Schuhs +2"', CommandType.Menu );
			
		--THIEF
		elseif meIdle.MainJob == ( 6 ) then
		
			if ((isBuffActive( 'Sneak_Attack' ) or (isBuffActive( 'Trick_Attack' )))) then
				
			else
			
				print('\30\28Current gear:  Thief Movement\30\01\30\01' );
				AshitaCore:GetDataModule():SendCommand( '/equip head "Raider\'s Bonnet +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Twilight Torque"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Raider\'s Vest +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Brego Gloves"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Dark Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Raider\'s Culottes +1"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Fajin Boots"', CommandType.Menu);
			
			end
			
		--Dark Knight
		elseif meIdle.MainJob == ( 8 ) then
		
			print('\30\28Current Gear:  Dark Knight Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip head "Ogier\'s helm"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Twilight Torque"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Ogier\'s Surcoat"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Bale guantlets +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Dark Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Metallon Mantle"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Nierenschutz"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Rheic Schuhs +2"', CommandType.Menu);			
			
		--Beast Master
		elseif meIdle.MainJob == ( 9 ) then
		
			print('\30\28CurrentGear:  Beast Master Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip head "Ogier\'s helm"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Twilight Torque"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Ogier\'s Surcoat"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Ferine Manoplas +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Dark Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Metallon Mantle"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Nierenschutz"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Ferine Quijotes +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Rheic Schuhs +2"', CommandType.Menu);		
			
		--Bard
		elseif meIdle.MainJob == ( 10 ) then
		
			print('\30\28Current Gear:  Bard Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip main "Earth Staff"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Twilight Torque"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Dark Ring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip back "Cheviot Cape"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Aoidos\' Cothurnes"', CommandType.Typed );
			
		--SAMURAI
		elseif meIdle.MainJob == ( 12 ) then
		
			print('\30\28Current Gear:  Samurai Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand('/equip head "Ogier\'s Helm"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip neck "Twilight Torque"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ring1 "Dark Ring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ring2 "Dark Ring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip back "Metallon Mantle"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip feet "Danzo Sune-Ate"', CommandType.Menu );
			
		--Ninja
		elseif meIdle.MainJob == ( 13 ) then
			
			print('\30\28Current gear:  Ninja Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand('/equip head "Iga Zukin +2"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip neck "Twilight Torque"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ear1 "Suppanomimi"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ear2 "Brutal Earring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip body "Loki\'s Kaftan"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip hands "Iga tekko +1"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ring1 "Dark Ring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip ring2 "Dark Ring"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip back "Boxer\'s Mantle"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip waist "Twilight Belt"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip legs "Iga Hakama +2"', CommandType.Menu );
			AshitaCore:GetDataModule():SendCommand('/equip feet "Danzo Sune-ate"', CommandType.Menu );
		
		--Summoner
		elseif meIdle.MainJob == ( 15 ) then
		
			print('\30\28Current Gear:  Summoner Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Caller\'s Pendant"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Evoker\'s Ring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip back "Cheviot Cape"', CommandType.Typed );
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Caller\'s Pigaches +2"', CommandType.Typed );
		
		--PuppetMaster
		elseif meIdle.MainJob == ( 18 ) then
		
			print('\30\28Current Gear:  PuppetMaster Movement\30\01' );
			AshitaCore:GetDataModule():SendCommand( '/equip head "Cirque Capello +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Twilight Torque"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Minuet Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip body "Cirque Farsetto +1"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Cirque Guanti +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Dark Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Dark Ring"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip back "Cheviot Cape"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip legs "Cirque Pantaloni +2"', CommandType.Menu);
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Aurore Gaiters"', CommandType.Menu);
				
		--Geomancer
		elseif meIdle.MainJob == ( 21 ) then
		
			print('\30\28Current Gear:  Geomancer Movement\30\01' );
			
		--Rune Fencer
		elseif meIdle.MainJob == ( 22 ) then
		
			print('\30\28Current Gear:  Rune Fencer Movement\30\01' );
		
		end
		
	end
	
end


--Returns to idle gear when target dies
function kill()
	local plKillIndex = AshitaCore:GetDataModule():GetParty().Member[1].TargetIndex;
    local plKill = AshitaCore:GetDataModule():GetEntityList():At( plKillIndex );
		
	if plKill.Status == ( 1 ) then
		
		
		
	elseif plKill.Status == ( 0 ) then
	
		timer.RemoveTimer( 'timerKill' )
		timer.Once( 0, idle );
		
	end
end