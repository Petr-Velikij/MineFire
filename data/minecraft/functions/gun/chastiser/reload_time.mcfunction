execute if score @s reload matches -1 run scoreboard players set @s reload 120
execute if score @s reload matches 120 run function minecraft:gun/discharge

execute if score @s reload matches 108 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 1.6
execute if score @s reload matches 100 run playsound minecraft:entity.bat.takeoff player @a[distance=..7] ~ ~ ~ 0.3 1.6

execute if score @s reload matches 60 run playsound minecraft:entity.bat.takeoff player @a[distance=..7] ~ ~ ~ 0.3 1.6
execute if score @s reload matches 48 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 1.6
execute if score @s reload matches 40 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 1.8
execute if score @s reload matches 32 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 0.6
execute if score @s reload matches 24 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 1

execute if score @s reload matches 20 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 1.6
execute if score @s reload matches 8 run playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 1.6

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all