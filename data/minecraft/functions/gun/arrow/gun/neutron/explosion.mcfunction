scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner

particle dust 0 1 0 2 ~ ~ ~ 1.5 1.5 1.5 0 100 force @a[distance=..250]
playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 6.5 2
effect give @a[gamemode=!spectator,distance=..5] poison 4 0 false
effect give @a[gamemode=!spectator,distance=..5] blindness 1 0 false
execute as @e[gamemode=!spectator,distance=..5] run damage @s 3 minecraft:on_fire by @p[tag=Owner]
tag @a remove Owner
kill @s