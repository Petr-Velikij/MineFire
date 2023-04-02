execute store result entity @s Pos[0] double 0.1 run scoreboard players get Px varTime
execute store result entity @s Pos[1] double 0.1 run scoreboard players get Py varTime
execute store result entity @s Pos[2] double 0.1 run scoreboard players get Pz varTime
tag @s add pos_set
scoreboard players operation @s ex_damage = *Damage varTime