playsound minecraft:custom.gun.assault_rifle.oboima_2d_3 player @a[distance=..20] ~ ~ ~ 1 2
scoreboard players set @s Power 0
scoreboard players set @s Supply 0
data merge entity @e[tag=turret_collider,distance=..1,limit=1] {Sitting:0b}