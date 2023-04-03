scoreboard players set *1 varTime 450
scoreboard players set *3 varTime 0
function gun/anfisa/auto/search_loop
execute if score *3 varTime matches 1 run scoreboard players operation @s ID.target = @p[tag=target] ID.Player

#execute if score *3 varTime matches 1 run tag @p[gamemode=!spectator,distance=..30,tag=!no_target] add target
#execute if score *3 varTime matches 0 run tag @p[gamemode=!spectator,distance=..30,tag=!no_target] add no_target
#execute if score *3 varTime matches 0 if entity @a[gamemode=!spectator,distance=..30,tag=!no_target] run function gun/anfisa/auto/search_enemy