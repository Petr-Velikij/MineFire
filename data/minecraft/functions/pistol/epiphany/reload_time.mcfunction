execute if score @s reload_pistol matches -1 run scoreboard players set @s reload_pistol 40
execute if score @s reload_pistol matches 40 run function minecraft:gun/discharge
execute if score @s reload_pistol matches 40 run playsound custom.gun.assault_rifle.oboima_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload_pistol matches 24 run playsound custom.gun.assault_rifle.oboima_2d_2 player @s ~ ~ ~ 1 1
execute if score @s reload_pistol matches 8 run playsound custom.gun.assault_rifle.oboima_2d_3 player @s ~ ~ ~ 1 1

scoreboard players remove @s reload_pistol 1
execute if score @s reload_pistol matches 1 run function minecraft:gun/reload_all