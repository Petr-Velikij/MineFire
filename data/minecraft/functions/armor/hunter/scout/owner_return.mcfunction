execute store result entity @s AX long 1 run data get entity @p[tag=Owner] Pos[0] 1
execute store result entity @s AZ long 1 run data get entity @p[tag=Owner] Pos[2] 1
execute store result score *1 varTime run data get entity @p[tag=Owner] Pos[1] 1
scoreboard players add *1 varTime 2
execute store result entity @s AY long 1 run scoreboard players get *1 varTime