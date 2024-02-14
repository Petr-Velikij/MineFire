execute if score @s reload matches -1 run scoreboard players set @s reload 200
execute if score @s reload matches 200 run function minecraft:gun/discharge
execute if score @s reload matches 190 run playsound custom.gun.sokol.supply_2d_1 player @s ~ ~1.6 ~ 1 0
execute if score @s reload matches 160 run playsound custom.gun.assault_rifle.oboima_2d_1 player @s ~ ~ ~ 1 0
execute if score @s reload matches 80 run playsound custom.gun.assault_rifle.oboima_2d_2 player @s ~ ~ ~ 1 0
execute if score @s reload matches 30 run playsound custom.gun.sokol.supply_2d_2 player @s ~ ~1.6 ~ 1 0
execute if score @s reload matches 10 run playsound custom.gun.assault_rifle.oboima_2d_3 player @s ~ ~ ~ 1 0

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all