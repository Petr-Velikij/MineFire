execute unless entity @e[tag=turret_collider,distance=..1] run function armor/engineer/turret/explosion
execute if score @s Loop matches 6000 run kill @e[tag=turret,distance=..1]

execute store result score *1 varTime run data get entity @e[tag=turret_collider,distance=..1,limit=1] Health 1
execute if score *1 varTime matches ..10 if predicate random20 run particle lava ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force @a[distance=..75]

execute if score @s Loop matches 0 run function armor/engineer/turret/start

function armor/engineer/turret/owner
execute if score @s Loop matches 1.. if entity @a[gamemode=!spectator,tag=owner,distance=..30] run function armor/engineer/turret/ii
tag @a remove owner

scoreboard players add @s Loop 1