execute in minecraft:overworld run data modify block 0 -64 0 Items set value [{Slot:0b,Count:1,id:stone}]
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].id set from entity @s SelectedItem.id
execute in minecraft:overworld run data modify block 0 -64 0 Items[0].tag set from entity @s SelectedItem.tag

execute in minecraft:overworld store result score *InHolder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.InHolder 100
execute in minecraft:overworld store result score *Holder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.Holder 1
scoreboard players operation @s ammo_point -= @s price_cartridge
function gun/mat

scoreboard players add *InHolder varTime 100
scoreboard players set *Max varTime 465
scoreboard players set *1 varTime 100

scoreboard players operation *InHolder varTime /= *Holder varTime
scoreboard players operation *InHolder varTime *= *Max varTime
scoreboard players operation *InHolder varTime /= *1 varTime
scoreboard players operation *Max varTime -= *InHolder varTime
scoreboard players operation *Damage varTime = *Max varTime

execute in minecraft:overworld store result score *InHolder varTime run data get block 0 -64 0 Items[{Slot:0b}].tag.InHolder 1
scoreboard players add *InHolder varTime 1
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.InHolder int 1 run scoreboard players get *InHolder varTime
execute in minecraft:overworld store result block 0 -64 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get *Damage varTime

execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 0 -64 0 air{drop_contents:1b}