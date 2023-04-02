effect give @a[distance=..2,gamemode=!spectator] slowness 10 0 true
effect give @a[distance=..2,gamemode=!spectator] slowness 2 1 true
scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run tag @s add Owner
execute as @e[distance=..2,type=!#arrows] run damage @s 4 on_fire by @p[tag=Owner]
tag @a remove Owner
particle minecraft:flame ~ ~ ~ 0 0 0 0.05 3 force @a[distance=..75]

execute if entity @s[nbt={inGround:1b}] run function armor/alchemist/fire/mat