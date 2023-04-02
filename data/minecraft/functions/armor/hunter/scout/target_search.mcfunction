scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run tag @s add Owner

scoreboard players operation buf ID.Team = @s ID.Team
execute as @a[gamemode=!spectator] if score @s ID.Team = buf ID.Team run tag @s add Team

tag @p[gamemode=!spectator,distance=..150,tag=!Owner,tag=!Team,scores={invisibility=0}] add target