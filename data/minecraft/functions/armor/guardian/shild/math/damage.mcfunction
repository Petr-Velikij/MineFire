execute store result score *X varTime run data get entity @s Motion[0]
execute store result score *Y varTime run data get entity @s Motion[1]
execute store result score *Z varTime run data get entity @s Motion[2]

scoreboard players operation *X varTime *= *X varTime
scoreboard players operation *Y varTime *= *Y varTime
scoreboard players operation *Z varTime *= *Z varTime

scoreboard players operation n sqrt = *X varTime
scoreboard players operation n sqrt += *Y varTime
scoreboard players operation n sqrt += *Z varTime

function mat/sqrt

execute store result score Damage varTime run data get entity @s damage 100
scoreboard players operation Damage varTime *= x sqrt
scoreboard players operation Damage varTime /= *100 CONST