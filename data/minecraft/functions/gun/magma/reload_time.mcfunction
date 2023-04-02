execute if score @s reload matches -1 run scoreboard players set @s reload 40
execute if score @s reload matches 40 run function minecraft:gun/discharge
execute if score @s reload matches 40 run playsound minecraft:custom.gun.amper.reload_2d_1 player @s ~ ~ ~ 1 1.2
execute if score @s reload matches 20 run playsound minecraft:custom.gun.amper.reload_2d_2 player @s ~ ~ ~ 1 1.2

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all