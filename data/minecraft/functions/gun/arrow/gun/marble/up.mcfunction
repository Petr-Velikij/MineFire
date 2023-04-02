scoreboard players operation *1 varTime = @s ArrowLive
scoreboard players operation *1 varTime %= *2 CONST
execute if score *1 varTime matches 0 run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 2 force @a[distance=..250]
execute if score *1 varTime matches 1 run particle dust 0 0.467 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]