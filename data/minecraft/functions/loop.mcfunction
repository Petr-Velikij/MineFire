clear @a[gamemode=!spectator] #clear_artifacts
execute as @a[gamemode=!spectator] unless score @s ID.armor matches 8 run clear @s ender_pearl

execute as @a[gamemode=!spectator] unless score @s damage_absorbed matches 0 run scoreboard players operation @s damage_taken += @s damage_absorbed
scoreboard players set @a damage_absorbed 0

execute as @a[gamemode=!spectator,scores={PlayerHead=1,player_hurt=1..}] at @s run playsound entity.player.attack.crit player @s ~ ~100 ~ 100 1
scoreboard players set @a PlayerHead 0

execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ #no_collider run spawnpoint @s ~ ~ ~ ~ 

execute as @e[type=armor_stand,tag=knife] at @s run function armor/spetsnaz/knife/armor_stand
execute as @a[gamemode=!spectator,scores={Stun=1..}] at @s run function module/energy/stun
execute as @a[gamemode=!spectator,scores={Stun=0}] at @s run function module/start
execute as @a[gamemode=!spectator] at @s run function gun/start
execute as @e[type=arrow] at @s run function gun/arrow/arrow
execute as @a[gamemode=!spectator] at @s run function armor/start
execute as @e[type=marker,tag=makusya_point] at @s run function gun/makusya/point
execute as @e[type=phantom,tag=scout] at @s run function armor/hunter/scout/global
execute as @e[type=armor_stand,tag=turret_up] at @s run function armor/engineer/turret/preparation
execute as @e[type=armor_stand,tag=Mshild] at @s run function armor/guardian/shild/global 
execute as @e[type=armor_stand,tag=shield] at @s run function module/shield/module/test_end
execute as @e[type=skeleton,tag=bait] at @s run function armor/flickering/bait/simulation

execute as @a[gamemode=!spectator,scores={Heat=1..}] at @s run function heat
execute as @a[gamemode=!spectator] run function stamina/global
execute as @e[type=interaction,tag=loot_hitbox] if data entity @s interaction at @s run function game/loot/looting
execute as @a[gamemode=!spectator,scores={PKM_1=1}] if data entity @s SelectedItem.tag.ammo at @s run function game/loot/give_ammo
execute as @a[gamemode=!spectator] run function health/global

scoreboard players add Loop1k20 CONST 1
execute if score Loop1k20 CONST matches 20 run function minecraft:loop1k20 
execute if score Loop1k20 CONST matches 20.. run scoreboard players set Loop1k20 CONST 0

scoreboard players add @a[scores={Time_PKM_2=..99}] Time_PKM_2 1
scoreboard players set @a[scores={PKM_2=1..}] Time_PKM_2 0
scoreboard players set @a PKM_1 0
scoreboard players set @a PKM_2 0
scoreboard players set @a player_hurt 0
scoreboard players set @a sneak_time 0
scoreboard players set @a crouch_one_cm 0
scoreboard players set @a sprint_one_cm 0
scoreboard players set @a aviate_one_cm 0
scoreboard players set @a reloadGun 0
scoreboard players set @a jump 0
scoreboard players set @a damage_taken 0

execute if score #auto Zona matches 1 if score Стадия Zona matches 0 run function game/auto/zona
execute if score Стадия Zona matches 2 as @e[type=marker,tag=game_zone,limit=1] at @s run function minecraft:game/zona/move
execute if score Стадия Zona matches 1..2 as @a[gamemode=!spectator,scores={deathCount=1}] at @s run function game/death
scoreboard players set @a deathCount 0