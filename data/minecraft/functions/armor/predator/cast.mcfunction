effect give @a[gamemode=!spectator,distance=..25,tag=!team,scores={invisibility=0}] glowing 7 0 false
effect give @a[gamemode=!spectator,distance=..25,tag=!team,scores={invisibility=0}] blindness 1 0 false
effect give @a[gamemode=!spectator,distance=..25,tag=!team,scores={invisibility=0}] slowness 7 0 false
playsound minecraft:entity.warden.tendril_clicks player @a[distance=..35] ~ ~ ~ 2 1
playsound minecraft:entity.warden.tendril_clicks player @a[distance=..35] ~ ~ ~ 2 0.5
playsound minecraft:entity.warden.tendril_clicks player @a[distance=..35] ~ ~ ~ 2 0
scoreboard players set @s armor_cooldown 400