execute store result score Px varTime run data get entity @s Pos[0] 10
execute store result score Py varTime run data get entity @s Pos[1] 10
execute store result score Pz varTime run data get entity @s Pos[2] 10
execute store result score *1 varTime run data get entity @s Motion[0] 10
execute store result score *2 varTime run data get entity @s Motion[1] 10
execute store result score *3 varTime run data get entity @s Motion[2] 10
scoreboard players operation Px varTime += *1 varTime
scoreboard players operation Py varTime += *2 varTime
scoreboard players operation Pz varTime += *3 varTime

scoreboard players operation Dx varTime = Ax varTime
scoreboard players operation Dy varTime = Ay varTime
scoreboard players operation Dz varTime = Az varTime
scoreboard players operation Dx varTime -= Px varTime
scoreboard players operation Dy varTime -= Py varTime
scoreboard players operation Dz varTime -= Pz varTime

scoreboard players operation Dx varTime *= Dx varTime
scoreboard players operation Dy varTime *= Dy varTime
scoreboard players operation Dz varTime *= Dz varTime

scoreboard players operation *1 varTime = Dx varTime
scoreboard players operation *1 varTime += Dy varTime
scoreboard players operation *1 varTime += Dz varTime
scoreboard players operation n sqrt = *1 varTime
function minecraft:mat/sqrt
scoreboard players operation test_dist varTime = x sqrt
#Для отладки
#tellraw @a [{"text": "Дистанция "},{"score":{"name":"test_dist","objective":"varTime"}},{"text": " из "},{"score":{"name":"MaxDist","objective":"varTime"}}]

execute if score test_dist varTime < MaxDist varTime run function gun/explosion/summon_marker