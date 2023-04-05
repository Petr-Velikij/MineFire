execute unless block ~ ~-1 ~ #no_collider positioned ^ ^ ^0.3 positioned ~ ~-0.15 ~ align y run function armor/spetsnaz/zipline/new2
scoreboard players remove *1 varTime 1
execute if block ~ ~-1 ~ #no_collider positioned ^ ^ ^0.33 if score *1 varTime matches 1.. run function armor/spetsnaz/zipline/loop