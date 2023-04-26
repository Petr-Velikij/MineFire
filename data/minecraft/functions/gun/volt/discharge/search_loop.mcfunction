scoreboard players remove @s Loop 1
particle dust 0 0.725 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..150]
execute positioned ~ ~-1 ~ run damage @e[type=#target,distance=..1.5,tag=!Owner,limit=1] 8 arrow by @p[tag=Owner]
execute positioned ~ ~-1 ~ as @e[type=#target,distance=..1.5,tag=!Owner,limit=1] positioned ~ ~1 ~ if entity @s[tag=!Owner] as @e[type=#target,distance=0.01..5,tag=!Owner,tag=!Electro] facing entity @s eyes run function gun/volt/chain/search

execute if score @s Loop matches 1.. positioned ~ ~-1 ~ unless entity @e[type=#target,distance=..1,tag=!Owner] positioned ~ ~1 ~ positioned ^ ^ ^0.2 if block ~ ~ ~ #no_collider run function gun/volt/discharge/search_loop