scoreboard players remove *1 varTime 1
execute positioned ~-0.5 ~-2.6 ~-0.5 if entity @a[gamemode=!spectator,dx=1,dz=1,dy=2,tag=!no_target] run scoreboard players set *3 varTime 1
execute positioned ~-0.5 ~-2.6 ~-0.5 if entity @a[gamemode=!spectator,dx=1,dz=1,dy=2,tag=no_target] run scoreboard players set *1 varTime 0

#particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..70]

execute if score *3 varTime matches 0 if score *1 varTime matches 1.. positioned ^ ^ ^0.33 if block ~ ~ ~ #no_collider run function armor/engineer/turret/search_loop