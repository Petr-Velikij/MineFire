scoreboard players operation buf ID.Owner = @s ID.Owner

scoreboard players set *1 varTime 0
execute as @a[gamemode=!spectator,scores={ID.module=4},distance=..10] if score @s ID.Player = buf ID.Owner run scoreboard players set *1 varTime 1

execute if score *1 varTime matches 0 run kill @s