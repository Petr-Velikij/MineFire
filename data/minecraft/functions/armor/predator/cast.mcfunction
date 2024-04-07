effect give @a[gamemode=!spectator,distance=..25,tag=!team] glowing 7 0 false
effect give @a[gamemode=!spectator,distance=..25,tag=!team] blindness 1 0 false
effect give @a[gamemode=!spectator,distance=..25,tag=!team] slowness 7 0 false
playsound minecraft:entity.warden.tendril_clicks player @a[distance=..35] ~ ~ ~ 2 1
playsound minecraft:entity.warden.tendril_clicks player @a[distance=..35] ~ ~ ~ 2 0.5
playsound minecraft:entity.warden.tendril_clicks player @a[distance=..35] ~ ~ ~ 2 0
scoreboard players set @s armor_cooldown 400