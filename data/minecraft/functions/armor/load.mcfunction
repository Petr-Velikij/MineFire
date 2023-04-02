execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s EnderItems[{Slot:0b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s EnderItems[{Slot:0b}].tag
execute in minecraft:overworld if data entity @s Inventory[{Slot:103b}].id run loot replace entity @s armor.head 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s EnderItems[{Slot:1b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s EnderItems[{Slot:1b}].tag
execute in minecraft:overworld run loot replace entity @s armor.chest 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s EnderItems[{Slot:2b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s EnderItems[{Slot:2b}].tag
execute in minecraft:overworld run loot replace entity @s armor.legs 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s EnderItems[{Slot:3b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s EnderItems[{Slot:3b}].tag
execute in minecraft:overworld run loot replace entity @s armor.feet 1 mine 0 -64 0 air{drop_contents:1b}