scoreboard players remove @s Loop 1

execute positioned ~ ~-1 ~ if entity @s[distance=..1.5] run scoreboard players set *1 varTime 1

execute if score @s Loop matches 1.. if score *1 varTime matches 0 if block ~ ~ ~ #no_collider positioned ^ ^ ^0.5 run function armor/predator/search/loop