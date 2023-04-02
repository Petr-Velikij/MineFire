scoreboard players operation *1 varTime = @p[gamemode=!spectator] Heat
scoreboard players operation *1 varTime *= *2 CONST
scoreboard players add *1 varTime 100
execute store result score *2 varTime run data get entity @s damage 100
scoreboard players operation *1 varTime *= *2 varTime
execute store result entity @s damage double 0.0001 run scoreboard players get *1 varTime