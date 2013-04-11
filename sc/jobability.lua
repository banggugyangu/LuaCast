function luacastJA(cmd)
	local args = cmd:GetArgs();
	local meJA = AshitaCore:GetDataModule():GetPlayer().Player;
	
	if ((args[1] == '/ja') or (args[1] == '/jobability')) then
		
		--Sneak Attack
		if (args[2] == 'Sneak Attack') then
			
			--Trick Attack Stacked
			if (isBuffActive( 'Trick_Attack' )) then
			
				timer.Once( 0, SATA );
			
			else
			
				print('\30\28Current Gear:  Sneak Attack\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Raider\'s Bonnet +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Loki\'s Kaftan"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Raider\'s Armlets +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Nifty Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Wanion Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Raider\'s Culottes +1"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Scopuli Nails"', CommandType.Menu);
				
			end
		
		--Trick Attack
		elseif (args[2] == ( 'Trick Attack' ) ) then
		
			--Sneak Attack Stacked
			if (isBuffActive( 'Sneak_Attack' )) then
			
				timer.Once( 0, SATA );
				
			else
			
				print('\30\28Current Gear:  Trick Attack\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Raider\'s Bonnet +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Suppanomimi"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Loki\'s Kaftan"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Rogue\'s Armlets +1"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Twilight Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Raider\'s Culottes +1"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Raider\'s Poulaines +2"', CommandType.Menu);
				
			end
		
		--Flee
		elseif (args[2] == ( 'Flee' ) ) then
		
			print('\30\28Current Gear:  Flee\30\01');
			AshitaCore:GetDataModule():SendCommand( '/equip feet "Rogue\'s Poulaines"', CommandType.Menu );
			
			
		--Meditate
		elseif (args[2] == ( 'Meditate' ) ) then
			
			if (meJA.MainJob == ( 12 ) ) then
				
				print('\30\28Meditate\30\01');
				AshitaCore:GetDataModule():SendCommand( '/equip head "Myochin Kabuto"', CommandType.Menu);
			
			end
			
		--Jump
		elseif ((args[2] == ( 'Jump' )) or (args[2] == ( 'High Jump' ) ) ) then
		
			if (meJA.MainJob == ( 12 ) ) then
				
				print('\30\28Current Gear:  Jump (Samurai)\30\01')
				AshitaCore:GetDataModule():SendCommand( '/equip head "Unkai Kabuto +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ear2 "Brutal Earring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip body "Unkai Domaru +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip hands "Unkai Kote +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring1 "Ulthalam\'s Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip ring2 "Rajas Ring"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip back "Atheling Mantle"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip waist "Goading Belt"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip legs "Unkai Haidate +2"', CommandType.Menu);
				AshitaCore:GetDataModule():SendCommand( '/equip feet "Ace\'s Leggings"', CommandType.Menu);
			
			end
			
		--Maneuvers
		elseif string.Match( cmd, 'Maneuver' ) then
			
			AshitaCore:GetDataModule():SendCommand( '/equip neck "Buffoon\'s Collar"', CommandType.Typed);
			AshitaCore:GetDataModule():SendCommand( '/equip hands "Puppetry Dastanas"', CommandType.Typed);
			--Ice
			if string.Match( cmd, 'Ice' ) then
				
			end
			
		end
		
		timer.Once( 2, TP );
		
	end
end

--SATA Stack
function SATA()

	print('\30\28Current Gear:  SATA\30\01');
	AshitaCore:GetDataModule():SendCommand( '/equip head ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip neck ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip ear1 ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip ear2 ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip body ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip hands ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip ring1 ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip ring2 ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip back ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip waist ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip legs ""', CommandType.Menu);
	AshitaCore:GetDataModule():SendCommand( '/equip feet ""', CommandType.Menu);
	
end