execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 450
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

particle end_rod ~ ~ ~ 0 0 0 0.008 1 force @a[distance=..175]

execute if score @s ArrowLive matches 12.. store result entity @s damage double 0.0090 run data get entity @s damage 100
#execute if score @s ArrowLive matches 20 run kill @s