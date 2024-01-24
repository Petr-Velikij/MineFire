execute if score @s Supply matches 40..60 run playsound minecraft:entity.generic.extinguish_fire player @a[distance=..5] ~ ~1 ~ 0.3 1.2
execute if score @s Supply matches 40 run playsound custom.gun.railgun.supply_1d player @a[distance=..7] ~ ~ ~ 1 1
execute if score @s Supply matches 20 run playsound custom.gun.railgun.supply_1d player @a[distance=..7] ~ ~ ~ 1 1
scoreboard players remove @s Supply 1