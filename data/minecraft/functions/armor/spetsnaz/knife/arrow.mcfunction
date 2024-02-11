execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 500
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 9800
execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 9800

execute as @e[type=armor_stand,tag=knife,limit=1,distance=..5,sort=nearest] rotated as @s run tp @s ~ ~-0.3 ~