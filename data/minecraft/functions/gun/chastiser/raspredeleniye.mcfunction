execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/chastiser/global

execute if score @s Power matches 501.. run scoreboard players set @s Power 500
execute if score @s Time_PKM_2 matches 5..99 run scoreboard players remove @s Power 20
execute if score @s Power matches ..99 run scoreboard players set @s Power 100