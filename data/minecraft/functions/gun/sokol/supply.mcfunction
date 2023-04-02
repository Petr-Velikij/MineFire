execute if score @s Supply matches 16 run playsound custom.gun.sokol.supply_2d_1 player @s ~ ~1.6 ~ 1 1
execute if score @s Supply matches 15 run function minecraft:gun/gilza_summon
execute if score @s Supply matches 3 run playsound custom.gun.sokol.supply_2d_2 player @s ~ ~1.6 ~ 1 1

scoreboard players remove @s Supply 1