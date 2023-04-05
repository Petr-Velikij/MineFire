execute if score @s reload matches -1 run scoreboard players set @s reload 105
execute if score @s reload matches 105 run function minecraft:gun/discharge

execute if score @s reload matches 94 run playsound custom.gun.sokol.supply_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload matches 84 run playsound custom.gun.sniper.oboima_2d_3 player @s ~ ~ ~ 1 0.7
execute if score @s reload matches 52 run playsound custom.gun.sniper.oboima_2d_1 player @s ~ ~ ~ 1 0.7
execute if score @s reload matches 24 run playsound custom.gun.sniper.oboima_2d_2 player @s ~ ~ ~ 1 0.7
execute if score @s reload matches 5 run playsound custom.gun.sokol.supply_2d_2 player @s ~ ~ ~ 1 1

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all