scoreboard players remove @s Loop 1
execute if score @s Loop matches 0 run kill @s

scoreboard players operation *1 varTime = @s Loop
scoreboard players operation *1 varTime %= *20 CONST

scoreboard players operation buf ID.Team = @s ID.Owner
execute if score *1 varTime matches 0 as @a[gamemode=!spectator,distance=..20,scores={ID.armor=2}] unless score @s ID.Team = buf ID.Team run particle dust 1 0 0 1 ~ ~1.2 ~ 0 0 0 0 1 force @s