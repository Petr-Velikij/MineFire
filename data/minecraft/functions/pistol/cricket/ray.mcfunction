scoreboard players remove @s Loop 1
scoreboard players set *1 varTime 0
execute if entity @e[distance=..5,tag=!NOtarget] unless entity @e[type=arrow,tag=my_cricket,distance=..7] run function pistol/cricket/spawn_arrow
execute positioned ~-0.5 ~-2.6 ~-0.5 if entity @e[gamemode=!spectator,dx=1,dz=1,dy=2,tag=!NOtarget,tag=!my_cricket] run scoreboard players set *1 varTime 1

scoreboard players operation *2 varTime = @s Loop
scoreboard players operation *2 varTime %= *5 CONST
execute if score *2 varTime matches 0 unless score @s ID.module matches 1 run particle dust 0 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=!Owner]
execute if score *2 varTime matches 0 if score @s ID.module matches 1 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=!Owner]
execute if score *2 varTime matches 2 unless score @s ID.module matches 1 if score @s modeFire matches 2 run particle dust 0 0.5 1 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=!Owner]
execute if score *2 varTime matches 2 if score @s ID.module matches 1 if score @s modeFire matches 2 run particle dust 0 1 1 3 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=!Owner]

execute if score *1 varTime matches 0 if score @s Loop matches 1.. positioned ^ ^ ^0.33 if block ~ ~ ~ #no_collider run function pistol/cricket/ray