particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
scoreboard players remove @s ArrowLive 1
execute if score @s ArrowLive matches ..0 run kill @s

#scoreboard players operation buf ID.Owner = @s ID.target
#execute as @e[type=arrow,tag=makusya] if score @s ID.Owner = buf ID.Owner run tag @s add target
#scoreboard players set *1 varTime 0
#execute if entity @e[type=arrow,tag=target] run scoreboard players set *1 varTime 1
#execute if score *1 varTime matches 0 run kill @s