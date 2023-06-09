scoreboard players operation buf ID.Team = @s ID.Team
execute as @a[gamemode=!spectator] if score @s ID.Team = buf ID.Team run tag @s add team


scoreboard players operation *1 varTime = @s armor_cooldown2
scoreboard players operation *1 varTime %= *5 CONST

execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.armor_active if score @s armor_cooldown matches 0 run function armor/predator/cast
execute if data entity @s SelectedItem.tag.armor_active run function armor/cd

execute at @a[gamemode=!spectator,distance=..175,scores={invisibility=0},tag=!team] run particle dust 1 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 2 force @s
#execute at @a[gamemode=!spectator,distance=..75,scores={invisibility=0,Pos_delta=1..},nbt={OnGround:1b},tag=!team] run particle dust 1 0 0 5 ~ ~ ~ 0 0 0 0 1 force @s
execute if score *1 varTime matches 1 as @a[gamemode=!spectator,distance=0.1..75,scores={invisibility=0},tag=!team] positioned as @p positioned ~ ~1.6 ~ facing entity @s eyes run function armor/predator/search/start
execute if score @s armor_cooldown2 matches 1 at @a[distance=0.1..20,gamemode=!spectator,scores={invisibility=0},tag=!team] run playsound custom.armor.predator.heartbeat player @s ~ ~ ~ 2 1

execute if score @s armor_cooldown2 matches 0 run scoreboard players set @s armor_cooldown2 20
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1

tag @a remove team