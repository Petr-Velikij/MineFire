#effect give @e[distance=..8] wither 5 2
effect give @e[distance=..8] slowness 5 0
particle minecraft:crimson_spore ~ ~ ~ 5 1 5 0 10 force @a[distance=..50]

#scoreboard players operation buf ID.Owner = @s ID.Owner
#execute as @a if score @s ID.Player = buf ID.Owner run tag @s add owner
#execute as @a[gamemode=!spectator,distance=..8] run damage @s 2 magic by @p[tag=owner]
#tag @a remove owner

execute as @e[gamemode=!spectator,distance=..8] run damage @s 1 wither at ~ ~ ~