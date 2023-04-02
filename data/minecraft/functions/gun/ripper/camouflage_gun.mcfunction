execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

scoreboard players set *1 varTime 1060
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.CustomModelData int 1 run scoreboard players get *1 varTime
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}
tag @s add camouflage_gun