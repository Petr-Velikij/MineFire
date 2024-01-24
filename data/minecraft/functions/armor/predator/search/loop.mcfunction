scoreboard players remove distance varTime 1
execute positioned ~ ~-1.2 ~ if entity @e[tag=select,distance=..1.5] run scoreboard players set detection varTime 1
execute if score distance varTime matches 1.. if score detection varTime matches 0 positioned ^ ^ ^0.5 if block ~ ~ ~ #no_collider run function armor/predator/search/loop