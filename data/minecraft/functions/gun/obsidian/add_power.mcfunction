execute store result score *1 varTime run data get entity @s SelectedItem.tag.InHolder
execute if score @s Power matches 150..174 if score *1 varTime matches 4.. run scoreboard players add @s Power 1
execute if score @s Power matches 125..149 if score *1 varTime matches 3.. run scoreboard players add @s Power 1
execute if score @s Power matches ..124 if score *1 varTime matches 2.. run scoreboard players add @s Power 1

execute if score @s Power matches 105 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.2
execute if score @s Power matches 124 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.4
execute if score @s Power matches 144 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.6
execute if score @s Power matches 164 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 1.8
execute if score @s Power matches 174 run playsound minecraft:block.ender_chest.close player @s ~ ~1.8 ~ 0.5 2.00