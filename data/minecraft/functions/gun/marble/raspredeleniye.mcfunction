execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/marble/global

execute if score @s Power matches 1..99 run scoreboard players add @s Power 1
execute unless score @s ID.module matches 1 if score @s Power matches 101.. run scoreboard players set @s Power 100

execute if score @s ID.module matches 1 if score @s Power matches 100..149 run scoreboard players add @s Power 1
execute if score @s ID.module matches 1 if score @s Power matches 151.. run scoreboard players set @s Power 150

execute if score @s ID.module matches 1 if score @s Power matches ..149 if score @s Time_PKM_2 matches 30 run playsound minecraft:custom.gun.amper.reload_2d_2 player @s ~ ~1 ~ 1 2
execute if score @s ID.module matches 1 if score @s Power matches 1..149 if score @s Time_PKM_2 matches 30.. run scoreboard players add @s Power 2