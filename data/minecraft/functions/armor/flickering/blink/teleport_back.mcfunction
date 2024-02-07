execute positioned as @s run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force @a[distance=..125]
tag @p[distance=..5,gamemode=!spectator,tag=!owner] add select
playsound minecraft:entity.enderman.scream player @p[tag=select,distance=..5] ~ ~ ~ 2 1
execute positioned as @s run spreadplayers ~ ~ 5 2 true @p[tag=select,distance=..75]
particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force @a[distance=..125]
playsound minecraft:entity.enderman.teleport player @a[distance=..15] ~ ~1 ~ 2 1
scoreboard players set @s armor_cooldown 1200
tag @p[tag=select,distance=..75] remove select