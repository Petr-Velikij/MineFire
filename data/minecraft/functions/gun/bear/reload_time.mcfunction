execute if score @s reload matches -1 run scoreboard players set @s reload 52
execute if score @s reload matches 52 run function minecraft:gun/discharge
execute if score @s reload matches 52 run playsound custom.gun.assault_rifle.oboima_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload matches 31 run playsound custom.gun.assault_rifle.oboima_2d_2 player @s ~ ~ ~ 1 1
execute if score @s reload matches 10 run playsound custom.gun.assault_rifle.oboima_2d_3 player @s ~ ~ ~ 1 1

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all