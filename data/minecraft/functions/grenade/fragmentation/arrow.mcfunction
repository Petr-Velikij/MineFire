execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 400
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

particle smoke ~ ~ ~ 0 0 0 0.01 1 force @a[distance=..175]

execute if score @s ArrowLive matches 80 run function grenade/fragmentation/explosion