execute store result entity @s AX long 1 run data get entity @p[tag=target] Pos[0] 1
execute store result entity @s AZ long 1 run data get entity @p[tag=target] Pos[2] 1
execute store result score *1 varTime run data get entity @p[tag=target] Pos[1] 1
scoreboard players add *1 varTime 30
execute store result entity @s AY long 1 run scoreboard players get *1 varTime