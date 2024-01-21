execute if score @s reload matches -1 run scoreboard players set @s Power 0
execute if score @s reload matches -1 run scoreboard players set @s reload 50

execute if score @s reload matches 50 run playsound minecraft:custom.gun.amper.reload_2d_1 player @s ~ ~ ~ 1 1.3
execute if score @s reload matches 30 run playsound minecraft:custom.gun.amper.reload_2d_2 player @s ~ ~ ~ 1 1.3

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/marble/reload