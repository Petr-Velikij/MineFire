execute if score @s breath matches 0..9 run tp @s ~ ~ ~ ~0.07 ~-0.07
execute if score @s breath matches 10..19 run tp @s ~ ~ ~ ~-0.07 ~0.07
execute if score @s breath matches 20..29 run tp @s ~ ~ ~ ~-0.03 ~-0.03
execute if score @s breath matches 30..39 run tp @s ~ ~ ~ ~0.03 ~0.03
scoreboard players add @s breath 1
scoreboard players set @s[scores={breath=40}] breath 0