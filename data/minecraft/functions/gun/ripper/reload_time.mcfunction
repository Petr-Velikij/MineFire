execute if score @s reload matches -1 run scoreboard players set @s reload 30
execute if score @s reload matches 30 run function minecraft:gun/discharge
execute if score @s reload matches 30 run playsound custom.gun.assault_rifle.oboima_2d_1 player @s ~ ~ ~ 1 1.1
execute if score @s reload matches 14 run playsound custom.gun.assault_rifle.oboima_2d_2 player @s ~ ~ ~ 1 1.1
execute if score @s reload matches 8 run playsound custom.gun.assault_rifle.oboima_2d_3 player @s ~ ~ ~ 1 1.1

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all