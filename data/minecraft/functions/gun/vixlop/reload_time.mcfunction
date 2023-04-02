execute if score @s reload matches -1 run scoreboard players set @s reload 80
execute if score @s reload matches 80 run function minecraft:gun/discharge

execute if score @s reload matches 72 run playsound custom.gun.vixlop.supply_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload matches 64 run playsound custom.gun.vixlop.oboima_2d_3 player @s ~ ~ ~ 1 1
execute if score @s reload matches 40 run playsound custom.gun.vixlop.oboima_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload matches 20 run playsound custom.gun.vixlop.oboima_2d_2 player @s ~ ~ ~ 1 1
execute if score @s reload matches 4 run playsound custom.gun.vixlop.supply_2d_2 player @s ~ ~ ~ 1 1

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all