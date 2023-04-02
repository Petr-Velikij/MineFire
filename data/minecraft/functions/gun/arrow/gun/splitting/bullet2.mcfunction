execute store result entity @s damage double 0.0065 run data get entity @s damage 100
particle dust 0.788 0.788 0.788 1 ~ ~ ~ 0.1 0.1 0.1 0.02 5 force @a[distance=..150]
scoreboard players add @s Loop 1
execute if score @s Loop matches 10 run kill @s