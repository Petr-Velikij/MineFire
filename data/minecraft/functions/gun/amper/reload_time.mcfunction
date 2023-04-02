execute if score @s reload matches -1 run scoreboard players set @s reload 60
execute if score @s reload matches 60 run function minecraft:gun/discharge
execute if score @s reload matches 60 run playsound minecraft:custom.gun.amper.reload_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload matches 36 run playsound minecraft:custom.gun.amper.reload_2d_2 player @s ~ ~ ~ 1 1

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all