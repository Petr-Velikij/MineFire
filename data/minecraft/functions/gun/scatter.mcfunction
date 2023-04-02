scoreboard players operation @s Scatter += @s Pos_delta

scoreboard players operation @s East_x2 = @s East_x
execute store result score @s East_x run data get entity @s Rotation[0] 3

scoreboard players operation @s East_y2 = @s East_y
execute store result score @s East_y run data get entity @s Rotation[1] 3
scoreboard players operation @s East_y += *270 CONST

scoreboard players operation *1 varTime = @s East_x
scoreboard players operation *1 varTime -= @s East_x2
execute if score *1 varTime matches ..-1 run scoreboard players operation *1 varTime *= *-1 CONST
execute if score *1 varTime matches 540.. run scoreboard players operation *2 varTime = *1080 CONST
execute if score *1 varTime matches 540.. run scoreboard players operation *1 varTime -= *2 varTime

scoreboard players operation *2 varTime = @s East_x2
scoreboard players operation *2 varTime -= @s East_x
execute if score *2 varTime matches ..-1 run scoreboard players operation *2 varTime *= *-1 CONST
execute if score *1 varTime > *2 varTime run scoreboard players operation *1 varTime = *2 varTime

scoreboard players operation *2 varTime = @s East_y
scoreboard players operation *2 varTime -= @s East_y2

scoreboard players operation *1 varTime *= *1 varTime
scoreboard players operation *2 varTime *= *2 varTime

scoreboard players operation *1 varTime += *2 varTime
scoreboard players operation n sqrt = *1 varTime
function minecraft:mat/sqrt
scoreboard players operation @s Scatter += x sqrt

scoreboard players operation @s Scatter *= *82 CONST
scoreboard players operation @s Scatter /= *100 CONST