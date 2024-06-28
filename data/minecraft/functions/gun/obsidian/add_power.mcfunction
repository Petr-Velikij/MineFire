execute store result score *1 varTime run data get entity @s SelectedItem.tag.InHolder
execute if score @s Power matches 150..174 if score *1 varTime matches 4.. run scoreboard players add @s Power 1
execute if score @s Power matches 130..148 if score *1 varTime matches 3.. run scoreboard players add @s Power 2
execute if score @s Power matches ..127 if score *1 varTime matches 2.. run scoreboard players add @s Power 3

execute if score @s Power matches 106 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.25
execute if score @s Power matches 127 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.50
execute if score @s Power matches 148 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.75
execute if score @s Power matches 174 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 2.00