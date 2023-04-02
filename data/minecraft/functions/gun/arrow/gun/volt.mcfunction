execute if score @s ArrowLive matches 8.. store result entity @s damage double 0.009 run data get entity @s damage 100
execute if score @s ArrowLive matches 3..7 store result entity @s damage double 0.0075 run data get entity @s damage 100

execute if score @s ArrowLive matches 14 run kill @s

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s varTimeEntity1

particle dust 0 0.725 1 1 ^0.2 ^ ^ 0 0 0 0 1 force @a[distance=..250]
particle dust 0 0.725 1 1 ^ ^ ^ 0 0 0 0 1 force @a[distance=..250]
execute if entity @s[tag=up] run particle dust 0 1 0.533 2 ^ ^ ^0.1 0 0 0 0 1 force @a[distance=..250]
particle dust 0 0.725 1 1 ^-0.2 ^ ^ 0 0 0 0 1 force @a[distance=..250]
#execute if predicate minecraft:bullet_zveroboj run function minecraft:gun/zveroboj/bullet