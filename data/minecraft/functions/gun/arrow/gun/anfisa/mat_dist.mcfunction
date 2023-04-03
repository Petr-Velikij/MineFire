execute store result score @s Pos_x run data get entity @s Pos[0] 1
execute store result score @s Pos_y run data get entity @s Pos[1] 1
execute store result score @s Pos_z run data get entity @s Pos[2] 1

execute store result score @s Pos_x2 run data get entity @e[type=marker,tag=point,limit=1] Pos[0] 1
execute store result score @s Pos_y2 run data get entity @e[type=marker,tag=point,limit=1] Pos[1] 1
execute store result score @s Pos_z2 run data get entity @e[type=marker,tag=point,limit=1] Pos[2] 1

scoreboard players operation @s Pos_x -= @s Pos_x2
scoreboard players operation @s Pos_y -= @s Pos_y2
scoreboard players operation @s Pos_z -= @s Pos_z2

scoreboard players operation @s Pos_x *= @s Pos_x
scoreboard players operation @s Pos_y *= @s Pos_y
scoreboard players operation @s Pos_z *= @s Pos_z

scoreboard players operation *1 varTime = @s Pos_x
scoreboard players operation *1 varTime += @s Pos_y
scoreboard players operation *1 varTime += @s Pos_z
scoreboard players operation n sqrt = *1 varTime
function minecraft:mat/sqrt
scoreboard players operation dist varTime = x sqrt