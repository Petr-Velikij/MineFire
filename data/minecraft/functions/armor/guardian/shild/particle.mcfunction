execute store result entity @s Pos[0] double 0.1 run scoreboard players get Px varTime 
execute store result entity @s Pos[1] double 0.1 run scoreboard players get Py varTime 
execute store result entity @s Pos[2] double 0.1 run scoreboard players get Pz varTime
execute positioned as @s run particle dust 1 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..150]
execute positioned as @s run playsound block.beacon.power_select player @a[distance=..30] ~ ~1 ~ 0.6 2
kill @s