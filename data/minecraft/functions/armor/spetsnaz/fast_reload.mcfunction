scoreboard players operation *1 varTime = @s reload
scoreboard players operation *1 varTime %= *10 CONST
execute if score *1 varTime matches 9 run scoreboard players remove @s reload 1
execute if score *1 varTime matches 3 run scoreboard players remove @s reload 1