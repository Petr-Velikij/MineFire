execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 400
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

particle minecraft:dust 0 1 1 1 ~ ~0.1 ~ 0 0 0 0 1 force @a[distance=..175]

execute if score @s rebound.count matches 2.. run function grenade/emp/explosion
execute if score @s ArrowLive matches 60 run function grenade/emp/explosion