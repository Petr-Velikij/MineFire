scoreboard players operation buf ID.Team = @s ID.Team
execute as @a[gamemode=!spectator] if score @s ID.Team = buf ID.Team run tag @s add team

scoreboard players operation *1 varTime = @s armor_cooldown2
scoreboard players operation *1 varTime %= *5 CONST

execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.armor_active if score @s armor_cooldown matches 0 run function armor/predator/cast
execute if data entity @s SelectedItem.tag.armor_active run function armor/cd

execute at @a[gamemode=!spectator,distance=..175,scores={invisibility=0},tag=!team] run particle dust 1 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 2 force @s
execute if score @s armor_cooldown2 matches 1 at @a[distance=0.1..20,gamemode=!spectator,scores={invisibility=0},tag=!team] run playsound custom.armor.predator.heartbeat player @s ~ ~ ~ 2 1

tag @e[type=armor_stand,tag=marcer_enemy,distance=..5] remove detected_enemy
execute unless predicate is_sneaking if score @s Pos_delta matches 0..2 if entity @a[gamemode=!spectator,distance=10..160,tag=!team,scores={invisibility=0}] positioned ~ ~1.62 ~ run function armor/predator/search/start
execute if predicate is_sneaking if score @s Pos_delta matches 0..2 if entity @a[gamemode=!spectator,distance=10..160,tag=!team,scores={invisibility=0}] positioned ~ ~1.27 ~ run function armor/predator/search/start
kill @e[type=armor_stand,tag=marcer_enemy,tag=!detected_enemy,distance=..5]
tag @a[gamemode=!spectator,distance=10..160,tag=tested] remove tested

effect give @a[distance=..25,scores={damage_taken=1..},gamemode=!spectator,tag=!team] glowing 1 0 false
execute if score @s player_hurt matches 1 if entity @a[gamemode=!spectator,distance=..150,scores={damage_taken=1..},tag=!team] run function armor/predator/healt/start

execute if score @s armor_cooldown2 matches 0 run scoreboard players set @s armor_cooldown2 20
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1

tag @a remove team