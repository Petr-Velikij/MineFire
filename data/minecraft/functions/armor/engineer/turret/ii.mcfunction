scoreboard players set distance varTime 60
execute at @p[gamemode=!spectator,tag=owner,distance=..30] positioned ~ ~1 ~ facing entity @s eyes run function armor/engineer/turret/ray_owner
execute if entity @p[gamemode=!spectator,tag=owner,distance=..5] if score hp varTime matches ..19 as @e[tag=turret_collider,distance=..1,limit=1] unless data entity @s ActiveEffects[{Id:10}] run effect give @s regeneration 2 1

scoreboard players operation ID.Team varTime = @s ID.Team
execute as @a[gamemode=!spectator,distance=..30] if score @s ID.Team = ID.Team varTime run tag @s add no_target
execute positioned ~ ~0.5 ~ if entity @a[gamemode=!spectator,distance=..30,tag=!owner,tag=!no_target,scores={invisibility=0}] run function armor/engineer/turret/search_enemy
execute unless entity @a[gamemode=!spectator,tag=target,distance=..50] run tag @p[tag=owner,distance=..5] add target
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,tag=target,distance=..50] eyes

#execute positioned ~ ~0.45 ~ facing entity @p[gamemode=!spectator,tag=target,distance=..50,tag=!owner] eyes run function armor/engineer/turret/ray_target
execute unless entity @p[gamemode=!spectator,tag=target,tag=!owner] if score @s Power matches 30.. run data merge entity @e[limit=1,type=wolf,tag=ThisTurret,distance=..1] {Sitting:0b}
execute unless entity @p[gamemode=!spectator,tag=target,tag=!owner] run scoreboard players set @s Power 0
execute if entity @p[gamemode=!spectator,tag=target,tag=!owner] run scoreboard players add @s Power 1
execute if score @s Power matches 91.. run scoreboard players set @s Power 0
execute if score @s Power matches 30.. if score @s Supply matches 0 run function armor/engineer/turret/shot
execute if score @s Power matches 30 run data merge entity @e[limit=1,type=wolf,tag=ThisTurret,distance=..1] {Sitting:1b}
execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1

tag @a remove target
tag @a remove no_target