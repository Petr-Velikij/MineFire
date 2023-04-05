scoreboard players operation *3 varTime = *1 varTime
scoreboard players operation *3 varTime %= *5 CONST
execute if score *3 varTime matches 0 run particle dust 1 1 0 1 ~ ~1 ~ 0 0 0 0 1 force @s

execute unless block ~ ~-1 ~ #no_collider positioned ^ ^ ^0.3 positioned ~ ~-0.15 ~ align y run particle dust 0 1 0 2 ~ ~1 ~ 0 0.3 0 0 3 force @s
execute unless block ~ ~-1 ~ #no_collider run scoreboard players set *2 varTime 1

scoreboard players remove *1 varTime 1
execute if block ~ ~-1 ~ #no_collider positioned ^ ^ ^0.33 unless block ~ ~-1 ~ water if score *1 varTime matches 1.. run function armor/spetsnaz/zipline/rendering_set_loop