scoreboard players remove *1 varTime 1
particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250,tag=Owner]
execute if score *1 varTime matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #no_collider unless entity @a[tag=target,distance=..2] run function armor/hunter/scout/marker