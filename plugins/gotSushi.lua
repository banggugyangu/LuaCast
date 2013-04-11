local PLUGIN =
{
    Name        = 'gotSushi?',
    Author      = 'Matix',
    Description = 'Displays accuracy/crit rate on-screen. Data is purged on un/load.',
    Version     = '1.0.0',
    Xpos        = 170, --was tested with an 8 line chatlog on 800x600
    Ypos        = 435, --was tested with an 8 line chatlog on 800x600
    Font        = 'Arial',
    FontSize    = 8;
};
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
function isCrit(nMode, chatLine)
    local modes = { 1, 4, 5, 6, 12, 13, 14, }
    for k,v in pairs(modes) do
        if (nMode == v) then
            return false;
        end    
    end  
    if string.Contains( chatLine, string.format('%s scores a critical hit!', myName() )) then
        return true;
    else
        return false;
    end    
end
function isSwing( nMode, chatLine )
    local modes = { 1, 4, 5, 6, 12, 13, 14, }
    for k,v in pairs(modes) do
        if (nMode == v) then
            return false;
        end    
    end
    if string.Contains( chatLine, string.format('%s hits the', myName() )) or string.Contains( chatLine, string.format('%s hits', myName() )) then
        return true;
    else
        return false;
    end   
end
function isMiss( nMode, chatLine )
    local modes = { 1, 4, 5, 6, 12, 13, 14, }
    for k,v in pairs(modes) do
        if (nMode == v) then
            return false;
        end    
    end
    if string.Contains( chatLine, string.format('%s misses the', myName() )) or string.Contains( chatLine, string.format('%s misses', myName() )) then
        return true;
    else
        return false;
    end
end
function jobType( jobType ) 
    local jobList = 
    { 
		"WAR", "MNK", "WHM", "BLM", "RDM", "THF",
		"PLD", "DRK", "BST", "BRD", "RNG", "SAM",
		"NIN", "DRG", "SMN", "BLU", "COR", "PUP",
		"DNC", "SCH", "GEO", "RNF",
    }; 
	if (tonumber(jobType) ~= nil) then
		for k,v in pairs(jobList) do
			if (jobType == k) then return v; end		
		end	
	end
	return nil;
end
function myName()
    local party  = AshitaCore:GetDataModule():GetParty().Member;
    local myName = party[1].Name;
    if (myName ~= nil) then return myName; else return nil end
end    
function myJob()
	local myPlayer = AshitaCore:GetDataModule():GetPlayer().Player;
	return jobType(myPlayer.MainJob);
end
function mySubjob()
	local myPlayer = AshitaCore:GetDataModule():GetPlayer().Player;
	return jobType(myPlayer.SubJob);
end
function myTargetName()
	local tarWindow 	= AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
	if (tarWindow ~= nil) then return tarWindow.Entity.Name; else return nil; end	
end
function myTargetID()
	local tarWindow 	= AshitaCore:GetDataModule():GetTarget():GetTargetWindow();
	if (tarWindow ~= nil) then return tarWindow.Entity.ID; else return nil; end	
end
function currentZoneID()
    local party  = AshitaCore:GetDataModule():GetParty().Member;
    local myZone = party[1].Zone;
    return myZone;
end 
function isTimestamped( str ) 
    if (string.find( tostring(str), '%[%d+%:%d+%:%d+ [APM]+%]' ) ~= nil) then return true; end
    if (string.find( tostring(str), '%[%d+%:%d+%:%d+%]' ) ~= nil) then return true; end
    if (string.find( tostring(str), '%[%d+/%d+/%d+ %- %d+%:%d+%:%d+% [APM]+%]' ) ~= nil) then return true; end
    if (string.find( tostring(str), '%[%d+/%d+/%d+ %- %d+%:%d+%:%d+%]' ) ~= nil) then return true; end
	return false;	
end
local TOTALACCDATA = 
{ 
    ["swings"]      = 0;
    ["misses"]      = 0;
    ["crits"]       = 0;
};
local ACCURACYDATA = { };
for x = 0, 255 do
    -- Doing this will break using #ACCURACYDATA
    ACCURACYDATA[x] =
    {
        Data = { } -- Holds all mob data for this zone..
    };
end
function parseForSwing( nMode, chatLine ) --ty atom0s
    local targetName    = "";
    local targetId      = 0;
    -- parse line for swing/miss..
    local check         = nil;
    if isCrit( nMode, chatLine ) then
        check = 2; 
    elseif isSwing( nMode, chatLine ) then
        check = 1;
    elseif isMiss( nMode, chatLine ) then
        check = 0; 
    else
        return; -- if not found just returns here and doesn't continue..
    end 
    -- get target name / target id
    local targetName    = myTargetName();
    local targetId      = myTargetID();
    local zoneId        = currentZoneID();
    -- Get current mob data..
    local mobData   = nil;
    local zoneData  = ACCURACYDATA[ zoneId ];
    for k,v in pairs( zoneData.Data ) do
        if (v.mobId == targetId) then
            mobData = v;
            break;
        end
    end
    -- Ensure we found data, if not create a new table..
    if (mobData == nil) then
        mobData = { ["mobId"] = targetId, ["mobName"] = targetName, ["swings"] = 0, ["misses"] = 0, ["crits"] = 0, };
        table.insert( zoneData.Data, mobData );
    end
    -- If current chat line was a successful hit..
    if (check == 1) then
        TOTALACCDATA["swings"] = TOTALACCDATA["swings"] + 1;
        mobData["swings"] = mobData["swings"] + 1;
        print(string.format('mobData["swings"] : [%d]', mobData["swings"]));
    end     
    if (check == 2) then
        TOTALACCDATA["crits"] = TOTALACCDATA["crits"] + 1;
        mobData["crits"] = mobData["crits"] + 1;
        TOTALACCDATA["swings"] = TOTALACCDATA["swings"] + 1;
        mobData["swings"] = mobData["swings"] + 1;  
        print(string.format('mobData["crits"] : [%d]', mobData["crits"]));        
    end
    if (check == 0) then
        TOTALACCDATA["misses"] = TOTALACCDATA["misses"] + 1;
        mobData["misses"] = mobData["misses"] + 1;
        TOTALACCDATA["swings"] = TOTALACCDATA["swings"] + 1;
        mobData["swings"] = mobData["swings"] + 1;  
        print(string.format('mobData["misses"] : [%d]', mobData["misses"]));
    end 
    updateScreen1( returnAccData( mobData["misses"], mobData["swings"] ) );
    updateScreen2( returnAccData( TOTALACCDATA["misses"], TOTALACCDATA["swings"] ) ); 
    updateScreen3( returnCritData( mobData["crits"], mobData["swings"] ) ); 
    updateScreen4( returnCritData( TOTALACCDATA["crits"], TOTALACCDATA["swings"] ) );   
end
function returnAccData(miss, swing) 
    local missAccuracy = ((miss / swing) * 100);
    local accuracy = (100 - missAccuracy);
    if not (accuracy < 0) and not (accuracy > 100) then
        return accuracy;
    end    
end
function returnCritData(crits, swings)
    local critAccuracy = ((crits/swings) * 100);
    local cRate = (100 - critAccuracy);
    if not (cRate < 0) and not (cRate > 100) then
        return (100 - cRate);
    end
end
function updateScreen1( accuracyValue )
    if (accuracyValue ~= nil) then
        PLUGIN.sushiTextObj1:SetText(string.format('Target Accuracy: [%.2f%%]', accuracyValue));
    end
end
function updateScreen2( accuracyValue ) 
    if (accuracyValue ~= nil) then
        PLUGIN.sushiTextObj2:SetText(string.format('Total Accuracy: [%.2f%%]', accuracyValue));
    end
end
function updateScreen3( crate ) 
    if (crate ~= nil) then
        PLUGIN.sushiTextObj3:SetText(string.format('Target Crit Rate: [%.2f%%]', crate));
    end
end
function updateScreen4( crate ) 
    if (crate ~= nil) then
        PLUGIN.sushiTextObj4:SetText(string.format('Total Crit Rate: [%.2f%%]', crate));
    end
end
function sushi_parseChatline( nMode, text ) 
    parseForSwing(nMode, text);
end
function PLUGIN:OnLoad( )
    self.sushiTextObj1 = AshitaCore:GetDirectxModule():GetTextObjectManager():CreateTextObject( '__luacast_sushiTextObj1' );
    self.sushiTextObj1:SetBGColor( 128, 0, 0, 0 );
    self.sushiTextObj1:SetBGVisibility( true );
    self.sushiTextObj1:SetColor( 255, 255, 255, 255 );
    self.sushiTextObj1:SetFont( self.Font, self.FontSize );
    self.sushiTextObj1:SetLocation( self.Xpos, self.Ypos );
    self.sushiTextObj1:SetText( 'Target Accuracy: [0.00%]' );    
    self.sushiTextObj2 = AshitaCore:GetDirectxModule():GetTextObjectManager():CreateTextObject( '__luacast_sushiTextObj2' );
    self.sushiTextObj2:SetBGColor( 128, 0, 0, 0 );
    self.sushiTextObj2:SetBGVisibility( true );
    self.sushiTextObj2:SetColor( 255, 255, 255, 255 );
    self.sushiTextObj2:SetFont( self.Font, self.FontSize );
    self.sushiTextObj2:SetLocation( self.Xpos, (self.Ypos - (self.FontSize + 6)) );
    self.sushiTextObj2:SetText( 'Total Accuracy: [0.00%]' );
    self.sushiTextObj3 = AshitaCore:GetDirectxModule():GetTextObjectManager():CreateTextObject( '__luacast_sushiTextObj3' );
    self.sushiTextObj3:SetBGColor( 128, 0, 0, 0 );
    self.sushiTextObj3:SetBGVisibility( true );
    self.sushiTextObj3:SetColor( 255, 255, 255, 255 );
    self.sushiTextObj3:SetFont( self.Font, self.FontSize );
    self.sushiTextObj3:SetLocation( self.Xpos, (self.Ypos - (self.FontSize + 6 )* 2 ) );
    self.sushiTextObj3:SetText( 'Target Crit Rate: [0.00%]' );
    self.sushiTextObj4 = AshitaCore:GetDirectxModule():GetTextObjectManager():CreateTextObject( '__luacast_sushiTextObj4' );
    self.sushiTextObj4:SetBGColor( 128, 0, 0, 0 );
    self.sushiTextObj4:SetBGVisibility( true );
    self.sushiTextObj4:SetColor( 255, 255, 255, 255 );
    self.sushiTextObj4:SetFont( self.Font, self.FontSize );
    self.sushiTextObj4:SetLocation( self.Xpos, (self.Ypos - (self.FontSize + 6 )* 3) );
    self.sushiTextObj4:SetText( 'Total Crit Rate: [0.00%]' );    
    events.Add( "onHandleNewChatLine", "sushi_onHandleNewChatLine", sushi_parseChatline );
end
function PLUGIN:OnUnload( )
    events.Remove( "onHandleNewChatLine", "sushi_onHandleNewChatLine" );    
    self.sushiTextObj1 = nil;
    AshitaCore:GetDirectxModule():GetTextObjectManager():DeleteTextObject( '__luacast_sushiTextObj1' );    
    self.sushiTextObj2 = nil;
    AshitaCore:GetDirectxModule():GetTextObjectManager():DeleteTextObject( '__luacast_sushiTextObj2' ); 
    self.sushiTextObj3 = nil;
    AshitaCore:GetDirectxModule():GetTextObjectManager():DeleteTextObject( '__luacast_sushiTextObj3' );
    self.sushiTextObj4 = nil;
    AshitaCore:GetDirectxModule():GetTextObjectManager():DeleteTextObject( '__luacast_sushiTextObj4' );    
    print('Got sushi? unloaded.');
end
return PLUGIN;