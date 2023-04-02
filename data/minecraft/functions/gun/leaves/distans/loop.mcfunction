#particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 0 1 force @s
scoreboard players remove *Max varTime 1
execute if score *Max varTime matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #no_collider unless entity @e[distance=..2,tag=!Owner] run function minecraft:gun/leaves/distans/loop