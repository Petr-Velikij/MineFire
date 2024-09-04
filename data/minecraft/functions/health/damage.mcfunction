scoreboard players operation *1 varTime = @s damage_taken
scoreboard players operation *1 varTime *= *2 CONST
scoreboard players operation @s health_cooldown += *1 varTime
scoreboard players operation @s health_cooldown > *40 CONST
scoreboard players operation @s health_cooldown < *200 CONST

execute store result score *1 varTime run data get entity @s ActiveEffects[{Id:10}].Duration 1
execute if score *1 varTime matches ..60 run effect clear @s regeneration
effect clear @s hunger