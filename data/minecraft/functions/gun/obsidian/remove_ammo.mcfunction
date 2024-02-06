execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

execute in minecraft:overworld store result score *InHolder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.InHolder 1
scoreboard players operation *1 varTime = buf Power
scoreboard players remove *1 varTime 74
scoreboard players operation *1 varTime /= *25 CONST
scoreboard players operation *InHolder varTime -= *1 varTime

execute in minecraft:overworld store result score *Holder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.Holder 1
scoreboard players operation *1 varTime = *InHolder varTime
scoreboard players operation *1 varTime *= *100 CONST
scoreboard players set *Max varTime 465

scoreboard players operation *1 varTime /= *Holder varTime
scoreboard players operation *1 varTime *= *Max varTime
scoreboard players operation *1 varTime /= *100 CONST
scoreboard players operation *Max varTime -= *1 varTime
scoreboard players operation *Damage varTime = *Max varTime

execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.InHolder int 1 run scoreboard players get *InHolder varTime
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get *Damage varTime
execute unless score *InHolder varTime matches 0 if score @s Supply matches 0 in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if score *InHolder varTime matches 0 in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{},{},{}],Charged:0b}
execute unless score @s Supply matches 0 in minecraft:overworld run data modify block 0 -64 0 Items[{Slot:0b}].tag merge value {ChargedProjectiles:[{},{},{}],Charged:0b}

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}