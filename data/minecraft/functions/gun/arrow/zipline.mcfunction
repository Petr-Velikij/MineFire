execute store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0] 10100
execute store result entity @s Motion[1] double 0.0001 run data get entity @s Motion[1] 10100
execute store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2] 10100
execute if entity @e[type=armor_stand,tag=zipline,distance=..0.7] run tag @s add kill