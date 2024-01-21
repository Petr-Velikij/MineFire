scoreboard players set distance varTime 40
execute positioned ~ ~0.25 ~ facing entity @p[gamemode=!spectator,tag=owner,distance=..20] feet run function armor/engineer/turret/ray_owner

execute positioned ~ ~0.5 ~ if entity @a[gamemode=!spectator,distance=..30,tag=!owner,tag=!no_target,scores={invisibility=0}] run function armor/engineer/turret/search_enemy
execute unless entity @a[gamemode=!spectator,tag=target,distance=..50] run tag @p[tag=owner,distance=..5] add target
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,tag=target,distance=..50] eyes

execute positioned ~ ~0.45 ~ facing entity @p[gamemode=!spectator,tag=target,distance=..50,tag=!owner] eyes run function armor/engineer/turret/ray_target
execute unless entity @p[gamemode=!spectator,tag=target,tag=!owner] run scoreboard players set @s Power 0
execute if entity @p[gamemode=!spectator,tag=target,tag=!owner] run scoreboard players add @s Power 1
execute if score @s Power matches 91.. run scoreboard players set @s Power 0
execute if score @s Power matches 30.. if score @s Supply matches 0 run function armor/engineer/turret/shot 
execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1

tag @a remove target
tag @a remove no_target