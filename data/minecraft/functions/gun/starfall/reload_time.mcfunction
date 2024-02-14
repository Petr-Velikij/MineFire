execute if score @s reload matches -1 run scoreboard players set @s reload 30
execute if score @s reload matches 28 run playsound custom.gun.sokol.supply_2d_1 player @s ~ ~1.6 ~ 1 0
execute if score @s reload matches 15 run playsound custom.gun.tessen.reload_2d player @s ~ ~1.6 ~ 0.6 0.8
execute if score @s reload matches 2 run playsound custom.gun.sokol.supply_2d_1 player @s ~ ~1.6 ~ 1 0
scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/grenade_launcher/reload