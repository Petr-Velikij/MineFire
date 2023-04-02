execute if score @s Heat matches 101.. run scoreboard players set @s Heat 100
execute if score @s Heat matches 100 run particle dust 1 1 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 10 force @a[distance=..250]
execute if score @s Heat matches 67..99 run particle dust 1 0.5 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 8 force @a[distance=..250]
execute if score @s Heat matches 34..66 run particle dust 1 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 5 force @a[distance=..250]
execute if score @s Heat matches 10..33 run particle dust 0.5 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 3 force @a[distance=..250]
scoreboard players remove @s Heat 1