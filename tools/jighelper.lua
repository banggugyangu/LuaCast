
--[[

    -------------------------------------------------------------------------
    Spectral Jig Helper - Auto-cancels sneak when using Spectral Jig.
    -------------------------------------------------------------------------
    (c) atom0s 2013 [atom0s@live.com]
    -------------------------------------------------------------------------
    
]]--

----------------------------------------------------------------------
-- func : HasBuff
-- desc : Determines if the player has the given buff.
----------------------------------------------------------------------
local function HasBuff( buffId )
    local player = AshitaCore:GetDataModule():GetPlayer().Player;
    for k, v in pairs( player.Buffs ) do
        if v == buffId then return true; end
    end
    return false;
end

----------------------------------------------------------------------
-- func : CancelTimer
-- desc : Cancels a buff and waits til its confirmed.
----------------------------------------------------------------------
local function CancelTimer( )
    -- Continue ticking til buff is gone..
    if (HasBuff( 71 )) then
        AshitaCore:GetDataModule():SendCommand( '/cancel 71', CommandType.ForceHandle );
        return true;
    end
    
    -- Buff is gone, recast ability..
    AshitaCore:GetDataModule():SendCommand( '/ja "Spectral Jig" <me>', CommandType.Menu );
    
    -- Cancel timer..
    timer.RemoveTimer( 'jighelper' );
end

----------------------------------------------------------------------
-- func : jighelper_onHandleCommand
-- desc : Event callback for onHandleCommand event.
----------------------------------------------------------------------
function jighelper_onHandleCommand( szCommand, nType )
    local parsed    = ParseAutoTrans( szCommand, false );
    local args      = parsed:GetArgs();
    local cmd       = string.lower( args[1] );
    
    -- Ensure we are casting Spectral Jig..
    if ((cmd == '/ja' or cmd == '/jobability')) then
        if (string.lower( args[2] ) == 'spectral jig') then
            -- Create the cancel timer..
            timer.Create( 'jighelper', 1, 0, CancelTimer );
            return true;
        end
    end

    return false;
end
events.Add( "onHandleCommand", "jighelper_onHandleCommand", jighelper_onHandleCommand );