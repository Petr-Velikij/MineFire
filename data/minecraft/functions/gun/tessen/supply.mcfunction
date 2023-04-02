execute if score @s Supply matches 16 run playsound custom.gun.tessen.supply_2d_1 player @s ~ ~1.6 ~ 0.6 1
execute if score @s Supply matches 10 run function minecraft:gun/zveroboj/gilza
execute if score @s Supply matches 5 run playsound custom.gun.tessen.supply_2d_2 player @s ~ ~1.6 ~ 0.6 1

scoreboard players remove @s Supply 1