execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s HandItems[0].id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s HandItems[0].tag
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].Count set from entity @s HandItems[0].Count

item replace entity @s weapon.mainhand with air