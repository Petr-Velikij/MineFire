scoreboard players remove *1 varTime 1
execute positioned ~ ~-0.5 ~ if entity @a[gamemode=!spectator,distance=..3,tag=!no_target,scores={invisibility=0}] run scoreboard players set detection varTime 1
execute if score detection varTime matches 1 positioned ~ ~-0.5 ~ run tag @p[gamemode=!spectator,distance=..5,tag=!no_target,scores={invisibility=0}] add target
#particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute if score detection varTime matches 0 if score *1 varTime matches 1.. positioned ^ ^ ^0.33 if block ~ ~ ~ #no_collider run function gun/anfisa/auto/search_loop