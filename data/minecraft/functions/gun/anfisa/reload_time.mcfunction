execute if score @s reload matches -1 run scoreboard players set @s reload 32
execute if score @s reload matches 32 run function minecraft:gun/discharge
execute if score @s reload matches 32 run playsound custom.gun.tessen.supply_2d_1 player @s ~ ~1.6 ~ 0.6 1
execute if score @s reload matches 16 run playsound custom.gun.anfisa.reload_2d_1 player @s ~ ~1.6 ~ 0.6 1
execute if score @s reload matches 5 run playsound custom.gun.tessen.supply_2d_2 player @s ~ ~1.6 ~ 0.6 1
scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/anfisa/reload