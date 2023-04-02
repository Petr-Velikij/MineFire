execute if score @s breath matches 0..40 run tp @s ~ ~ ~ ~-0.005 ~-0.025
execute if score @s breath matches 41..80 run tp @s ~ ~ ~ ~ ~0.030
execute if score @s breath matches 81..100 run tp @s ~ ~ ~ ~0.015 ~-0.005
scoreboard players add @s breath 1
scoreboard players set @s[scores={breath=100}] breath 0