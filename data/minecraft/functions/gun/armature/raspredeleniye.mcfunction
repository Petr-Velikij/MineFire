execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/armature/global

execute if score @s Power matches ..119 run scoreboard players add @s Power 1
execute if score @s ID.module matches 1 if score @s Power matches 121.. run scoreboard players set @s Power 120
execute unless score @s ID.module matches 1 if score @s Power matches 101.. run scoreboard players set @s Power 100