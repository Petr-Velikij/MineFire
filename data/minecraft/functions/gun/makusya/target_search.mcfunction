scoreboard players remove @s Loop 1

scoreboard players set *1 varTime 0
execute positioned ~-0.5 ~-2.6 ~-0.5 run tag @p[gamemode=!spectator,dx=1,dz=1,dy=2,tag=!NOtarget] add target
execute if entity @a[tag=target] run scoreboard players set *1 varTime 1

execute if score *1 varTime matches 1 run function gun/makusya/set_point
execute unless score *1 varTime matches 1 if score @s Loop matches 0 run function gun/makusya/set_point
execute unless score *1 varTime matches 1 positioned ^ ^ ^0.5 unless block ~ ~ ~ #no_collider run function gun/makusya/set_point
execute if score *1 varTime matches 0 if score @s Loop matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #no_collider run function gun/makusya/target_search