function minecraft:random/number
scoreboard players remove Number Random 32
execute store result entity @s Rotation[0] float 5.625 run scoreboard players get Number Random