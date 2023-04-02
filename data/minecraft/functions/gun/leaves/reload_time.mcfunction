execute if score @s reload matches -1 run scoreboard players set @s reload 64
execute if score @s reload matches 64 run function minecraft:gun/discharge

execute if score @s reload matches 57 run playsound custom.gun.vixlop.supply_2d_1 player @s ~ ~ ~ 1 1.25
execute if score @s reload matches 51 run playsound custom.gun.vixlop.oboima_2d_3 player @s ~ ~ ~ 1 1.25
execute if score @s reload matches 32 run playsound custom.gun.vixlop.oboima_2d_1 player @s ~ ~ ~ 1 1.25
execute if score @s reload matches 16 run playsound custom.gun.vixlop.oboima_2d_2 player @s ~ ~ ~ 1 1.25
execute if score @s reload matches 3 run playsound custom.gun.vixlop.supply_2d_2 player @s ~ ~ ~ 1 1.25

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all