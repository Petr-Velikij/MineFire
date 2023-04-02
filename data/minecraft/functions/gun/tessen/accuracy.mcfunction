execute unless score @s sneak_time matches 0 run scoreboard players add @s Power 20
execute if score @s sneak_time matches 0 run scoreboard players remove @s Power 100
execute if score @s Power matches 1001.. run scoreboard players set @s Power 1000
execute if score @s Power matches ..99 run scoreboard players set @s Power 100

execute if score @s reload matches 0 run function minecraft:gun/tessen/print