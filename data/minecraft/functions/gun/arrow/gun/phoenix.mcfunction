execute if score @s Loop matches ..3 store result entity @s damage double 0.007 run data get entity @s damage 100
execute if score @s Loop matches 4.. store result entity @s damage double 0.0093 run data get entity @s damage 100
execute if score @s ArrowLive matches 1.. if entity @s[nbt=!{Fire:-1s}] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 3
scoreboard players remove @s Loop 1
execute if score @s Loop matches 0 run kill @s