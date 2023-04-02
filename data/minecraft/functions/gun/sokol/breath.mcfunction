execute if score @s breath matches 0..30 run tp @s ~ ~ ~ ~0.007 ~-0.03
execute if score @s breath matches 35..55 run tp @s ~ ~ ~ ~0.005 ~0.04
scoreboard players add @s breath 1
scoreboard players set @s[scores={breath=60}] breath 0