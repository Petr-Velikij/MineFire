execute if score @s reload matches -1 run scoreboard players set @s reload 200
execute if score @s reload matches 200 run playsound custom.gun.railgun.supply_1d player @a[distance=..7] ~ ~ ~ 2 1
execute if score @s reload matches 180 run playsound custom.gun.railgun.reload_1d_1 player @a[distance=..7] ~ ~ ~ 2 1
execute if score @s reload matches 150 run playsound custom.gun.railgun.reload_1d_2 player @a[distance=..7] ~ ~ ~ 2 1

execute if score @s reload matches 120 run playsound custom.gun.railgun.supply_1d player @a[distance=..7] ~ ~ ~ 2 1
execute if score @s reload matches 100 run playsound custom.gun.railgun.reload_1d_1 player @a[distance=..7] ~ ~ ~ 2 1
execute if score @s reload matches 70 run playsound custom.gun.railgun.reload_1d_2 player @a[distance=..7] ~ ~ ~ 2 1

execute if score @s reload matches 30 run playsound custom.gun.armature.reload_2d_1 player @a[distance=..7] ~ ~ ~ 1 0.6
execute if score @s reload matches 10 run playsound custom.gun.armature.reload_2d_2 player @a[distance=..7] ~ ~ ~ 1 0.6

scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/reload_one
execute if score @s reload matches 0 run scoreboard players set @s Supply 2