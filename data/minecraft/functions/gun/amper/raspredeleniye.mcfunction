execute if score SelectedItem ID.gun matches 1 run function gun/amper/global
execute if score Offhand ID.gun matches 1 if score @s PKM_1 matches 1 run function gun/amper/mode_fire

execute unless score SelectedItem ID.gun matches 1 if score @s Supply matches 7.. run scoreboard players set @s Supply 1