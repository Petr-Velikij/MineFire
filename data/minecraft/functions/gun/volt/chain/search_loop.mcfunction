scoreboard players remove @s Loop 1
particle dust 0 0.725 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..150]
execute positioned ~ ~-1.5 ~ if entity @s[distance=..1] positioned ~ ~1.5 ~ as @e[type=#target,distance=0.01..5,tag=!Owner,tag=!Electro] facing entity @s eyes run function gun/volt/chain/search
execute positioned ~ ~-1.5 ~ run damage @s[distance=..1] 5 arrow by @p[tag=Owner]
execute if score @s Loop matches 1.. positioned ~ ~-1.5 ~ unless entity @s[distance=..1] positioned ~ ~1.5 ~ positioned ^ ^ ^0.2 if block ~ ~ ~ #no_collider run function gun/volt/chain/search_loop