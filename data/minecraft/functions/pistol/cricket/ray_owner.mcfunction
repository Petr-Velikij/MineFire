scoreboard players remove @s Loop 1
scoreboard players operation *2 varTime = @s Loop
scoreboard players operation *2 varTime %= *8 CONST
execute if score *2 varTime matches 0 unless score @s ID.module matches 1 run particle dust 0 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]
execute if score *2 varTime matches 0 if score @s ID.module matches 1 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]
execute if score *2 varTime matches 2 unless score @s ID.module matches 1 if score @s modeFire matches 2 run particle dust 0 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]
execute if score *2 varTime matches 2 if score @s ID.module matches 1 if score @s modeFire matches 2 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]

execute if score @s Loop matches 1.. positioned ^ ^ ^0.33 run function pistol/cricket/ray_owner