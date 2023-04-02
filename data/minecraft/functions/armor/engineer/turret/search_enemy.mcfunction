scoreboard players set *1 varTime 100
scoreboard players set *3 varTime 0
execute facing entity @p[gamemode=!spectator,distance=..30,tag=!owner,tag=!no_target,scores={invisibility=0}] eyes run function armor/engineer/turret/search_loop

execute if score *3 varTime matches 1 run tag @p[gamemode=!spectator,distance=..30,tag=!owner,tag=!no_target,scores={invisibility=0}] add target
execute if score *3 varTime matches 0 run tag @p[gamemode=!spectator,distance=..30,tag=!owner,tag=!no_target,scores={invisibility=0}] add no_target
execute if score *3 varTime matches 0 if entity @a[gamemode=!spectator,distance=..30,tag=!owner,tag=!no_target,scores={invisibility=0}] run function armor/engineer/turret/search_enemy