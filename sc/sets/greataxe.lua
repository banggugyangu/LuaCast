function RagingRushWAR()

	print('\30\28Current Gear:  Raging Rush\30\01')
	AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip neck "Chivalrous Chain"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip waist "Snow Belt"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/ws "Raging Rush" <t>', CommandType.Typed );
	
end

function KingsJustice()

	print('\30\28Current Gear: King\'s Justice\30\01')
	AshitaCore:GetDataModule():SendCommand( '/equip head "Twilight Helm"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip neck "Breeze Gorget"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip ear1 "Fowling Earring"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip waist "Breeze Belt"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip legs "Jingang Hose"', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/equip feet "Dilaram\'s Sollerets', CommandType.Menu );
	AshitaCore:GetDataModule():SendCommand( '/ws "King\'s Justice" <t>', CommandType.Typed );
	
end