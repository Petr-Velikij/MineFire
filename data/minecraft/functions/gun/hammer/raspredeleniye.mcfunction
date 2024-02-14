execute if score @s Time_PKM_2 matches 10.. if score @s Power matches 101.. run scoreboard players remove @s Power 10
execute if score @s Power matches ..99 run scoreboard players set @s Power 100

execute unless score SelectedItem ID.gun matches 1 run scoreboard players set @s Supply 0
execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/hammer/global