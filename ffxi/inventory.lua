--[[

 * inventory.lua - Inventory helper definitions.
 * -----------------------------------------------------------------------
 *
 *		This file is part of Ashita.
 *
 *		Ashita is free software: you can redistribute it and/or modify
 *		it under the terms of the GNU Lesser General Public License as published by
 *		the Free Software Foundation, either version 3 of the License, or
 *		(at your option) any later version.
 *
 *		Ashita is distributed in the hope that it will be useful,
 *		but WITHOUT ANY WARRANTY; without even the implied warranty of
 *		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *		GNU Lesser General Public License for more details.
 *
 *		You should have received a copy of the GNU Lesser General Public License
 *		along with Ashita.  If not, see <http://www.gnu.org/licenses/>.
 *

]]--

----------------------------------------------------------------------
-- Storage Type Definitions
-- Note:
--      These are +1 from the real values because Lua tables start
--      at index 1 instead of 0!
----------------------------------------------------------------------
STORAGETYPE_INVENTORY   = 1;
STORAGETYPE_SAFE        = 2;
STORAGETYPE_STORAGE     = 3;
STORAGETYPE_TEMP        = 4;
STORAGETYPE_LOCKER      = 5;
STORAGETYPE_SATCHEL     = 6;
STORAGETYPE_SACK        = 7;

----------------------------------------------------------------------
-- Slot Type Definitions
-- Note:
--      These are +1 from the real values because Lua tables start
--      at index 1 instead of 0!
----------------------------------------------------------------------
SLOT_MAIN               = 1;
SLOT_SHIELD             = 2;
SLOT_RANGE              = 3;
SLOT_AMMO               = 4;
SLOT_HEAD               = 5;
SLOT_BODY               = 6;
SLOT_HANDS              = 7;
SLOT_LEGS               = 8;
SLOT_FEET               = 9;
SLOT_NECK               = 10;
SLOT_WAIST              = 11;
SLOT_EARLEFT            = 12;
SLOT_EARRIGHT           = 13;
SLOT_RINGLEFT           = 14;
SLOT_RINGRIGHT          = 15;
SLOT_BACK               = 16;

----------------------------------------------------------------------
-- func : GetItemFromEquipmentSlot
-- desc : Obtains an item object from the given equipment slot.
-- retn : Item object if valid, nil otherwise.
----------------------------------------------------------------------
function GetItemFromEquipmentSlot( slotId )
    -- Obtain the inventory object..
    local inventory = AshitaCore:GetDataModule():GetInventory().Inventory;
    
    -- Obtain the equipment for the given slot..
    local equipment = inventory.Equipment[ slotId ];
    if (equipment == nil or equipment.ItemIndex == 0) then return nil; end
    
    -- Obtain the item id for the given item..
    local itemId = inventory.Storage[ STORAGETYPE_INVENTORY ].Item[ equipment.ItemIndex + 1 ].Id;
    if (itemId == 0) then return nil; end
    
    -- Return the item object..
    return AshitaCore:GetResources():GetItemByID( itemId );
end
