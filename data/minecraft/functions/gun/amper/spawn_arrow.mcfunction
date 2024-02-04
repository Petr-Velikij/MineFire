summon minecraft:arrow ~ ~ ~
scoreboard players operation distance varTime = @s Loop
scoreboard players operation buf ID.module = @s ID.module
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/amper/shot_data