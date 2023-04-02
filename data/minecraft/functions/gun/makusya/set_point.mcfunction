scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=marker,tag=makusya_point] if score @s ID.target = buf ID.Owner run tag @s add point
scoreboard players set *1 varTime 0
execute as @e[type=marker,tag=point] run scoreboard players set *1 varTime 1
execute if score *1 varTime matches 0 if score @s Power matches 300 run function minecraft:gun/makusya/spawn_point
tp @e[type=marker,tag=point] ^ ^ ^-0.3
tag @e[type=marker,tag=point] remove point