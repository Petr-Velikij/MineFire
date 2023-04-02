execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 200
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime