execute if score @s Supply matches 13 run playsound custom.gun.vixlop.supply_2d_1 player @s ~ ~1.6 ~ 1 1.25
execute if score @s Supply matches 12 run function minecraft:gun/vixlop/gilza
execute if score @s Supply matches 3 run playsound custom.gun.vixlop.supply_2d_2 player @s ~ ~1.6 ~ 1 1.25

scoreboard players remove @s Supply 1