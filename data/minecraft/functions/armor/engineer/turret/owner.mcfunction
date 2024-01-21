scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run tag @s add owner

scoreboard players operation buf ID.Team = @s ID.Team
execute as @a[gamemode=!spectator] if score @s ID.Team = buf ID.Team run tag @s add no_target