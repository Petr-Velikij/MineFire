scoreboard players remove distance varTime 1
scoreboard players operation *1 varTime = distance varTime
scoreboard players operation *1 varTime += Loop1k20 CONST
scoreboard players operation *1 varTime %= *20 CONST
execute if score *1 varTime matches 0 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..80]
execute if score distance varTime matches 1.. positioned ^ ^ ^0.5 positioned ~ ~-1.5 ~ unless entity @p[gamemode=!spectator,tag=target,distance=..1] positioned ~ ~1.5 ~ run function armor/engineer/turret/ray_target