scoreboard players operation *1 varTime = MaxDist varTime
scoreboard players operation *1 varTime -= OptDist varTime
scoreboard players operation *2 varTime = test_dist varTime
scoreboard players operation *2 varTime -= OptDist varTime

scoreboard players operation *3 varTime = *1 varTime
scoreboard players operation *3 varTime -= *2 varTime
scoreboard players operation *3 varTime *= *100 CONST
scoreboard players operation *3 varTime /= *1 varTime

scoreboard players operation *3 varTime *= Damage varTime
scoreboard players operation *3 varTime /= *100 CONST
scoreboard players operation *Damage varTime = *3 varTime