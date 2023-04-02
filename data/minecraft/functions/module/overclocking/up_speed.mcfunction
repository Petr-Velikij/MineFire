execute store result score damage varTime run data get entity @s damage 100
scoreboard players operation damage varTime *= marlinDamage CONST
execute store result entity @s damage double 0.0001 run scoreboard players get damage varTime

execute store result entity @s Motion[0] double 0.012 run data get entity @s Motion[0] 100
execute store result entity @s Motion[1] double 0.012 run data get entity @s Motion[1] 100
execute store result entity @s Motion[2] double 0.012 run data get entity @s Motion[2] 100