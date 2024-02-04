execute if score @s ArrowLive matches 1..5 store result entity @s damage double 0.0098 run data get entity @s damage 100
execute if score @s ArrowLive matches 6.. store result entity @s damage double 0.0092 run data get entity @s damage 100

execute if entity @s[tag=!up] run particle minecraft:dust 0.6 0 0.6 1 ~ ~ ~ 0 0 0 0 2 force @a[distance=..125]
execute if entity @s[tag=up] run particle minecraft:dust 0.7 0 0.7 1 ~ ~ ~ 0 0 0 0 2 force @a[distance=..125]
execute if score @s ArrowLive matches 15 run kill @s