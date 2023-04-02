execute store result score damage varTime run data get entity @s damage 100
scoreboard players operation damage varTime *= upDamageEW CONST
execute store result entity @s damage double 0.0001 run scoreboard players get damage varTime
tag @s add up