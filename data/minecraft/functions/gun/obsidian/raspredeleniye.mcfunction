execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/obsidian/global
execute if score Offhand ID.gun matches 1 if score @s PKM_1 matches 1 run function gun/obsidian/mode_fire

execute if score SelectedItem ID.gun matches 0 unless score @s Power matches 100 run scoreboard players set @s Power 100
execute if score @s Supply matches 2.. run scoreboard players remove @s Supply 1