execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:103b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:103b}].tag
execute in minecraft:overworld run loot replace entity @s enderchest.0 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:102b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:102b}].tag
execute in minecraft:overworld run loot replace entity @s enderchest.1 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:101b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:101b}].tag
execute in minecraft:overworld run loot replace entity @s enderchest.2 1 mine 0 -64 0 air{drop_contents:1b}

execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s Inventory[{Slot:100b}].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute in minecraft:overworld run loot replace entity @s enderchest.3 1 mine 0 -64 0 air{drop_contents:1b}