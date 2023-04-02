execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/locusts/global
#execute if score Offhand ID.gun matches 1 if score @s PKM_1 matches 1 run function gun/locusts/target_start
execute if score @s Power matches 101.. run scoreboard players remove @s Power 1
execute if score @s Power matches 101 run scoreboard players set @s ID.target 0