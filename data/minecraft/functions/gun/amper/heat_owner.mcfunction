scoreboard players remove @s Loop 1
scoreboard players operation *1 varTime = @s Loop
scoreboard players operation *1 varTime %= *16 CONST
execute if score *1 varTime matches 0 unless score @s ID.module matches 1 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]
execute if score *1 varTime matches 0 if score @s ID.module matches 1 run particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]
execute if score @s Loop matches 1.. positioned ^ ^ ^0.33 run function minecraft:gun/amper/heat_owner