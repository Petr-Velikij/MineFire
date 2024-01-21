execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/marble/global

execute if score @s Power matches 1..99 run scoreboard players add @s Power 1
scoreboard players operation @s Power < *100 CONST