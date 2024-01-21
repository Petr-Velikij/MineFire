scoreboard players remove @s Loop 1
execute positioned ~ ~-1.2 ~ at @a[gamemode=!spectator,distance=..0.7,tag=!NOtarget] run function gun/amper/heat_add
scoreboard players operation *1 varTime = @s Loop
scoreboard players operation *1 varTime %= *5 CONST
execute if score *1 varTime matches 0 unless score @s ID.module matches 1 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=!Owner]
execute if score *1 varTime matches 0 if score @s ID.module matches 1 run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=!Owner]
execute if score @s Loop matches 1.. positioned ^ ^ ^0.33 if block ~ ~ ~ #no_collider run function minecraft:gun/amper/heat