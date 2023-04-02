execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

execute in minecraft:overworld store result score *1 varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.InHolder 1
execute in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag.InHolder set value 0
execute in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag.Damage set value 465
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}