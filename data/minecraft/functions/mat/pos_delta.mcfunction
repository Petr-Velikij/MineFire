execute store result score @s Pos_x run data get entity @s Pos[0] 100
execute store result score @s Pos_y run data get entity @s Pos[1] 100
execute store result score @s Pos_z run data get entity @s Pos[2] 100

scoreboard players operation *1 varTime = @s Pos_x2
scoreboard players operation *2 varTime = @s Pos_y2
scoreboard players operation *3 varTime = @s Pos_z2

scoreboard players operation @s Pos_x2 = @s Pos_x
scoreboard players operation @s Pos_y2 = @s Pos_y
scoreboard players operation @s Pos_z2 = @s Pos_z

scoreboard players operation @s Pos_x -= *1 varTime
scoreboard players operation @s Pos_y -= *2 varTime
scoreboard players operation @s Pos_z -= *3 varTime

scoreboard players operation @s Pos_x *= @s Pos_x
scoreboard players operation @s Pos_y *= @s Pos_y
scoreboard players operation @s Pos_z *= @s Pos_z

scoreboard players operation *1 varTime = @s Pos_x
scoreboard players operation *1 varTime += @s Pos_y
scoreboard players operation *1 varTime += @s Pos_z
scoreboard players operation n sqrt = *1 varTime
function minecraft:mat/sqrt
scoreboard players operation @s Pos_delta = x sqrt