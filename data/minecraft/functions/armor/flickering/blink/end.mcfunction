execute positioned as @e[type=marker,tag=blink_to,tag=myBlink,limit=1] run tp @s ~ ~ ~
kill @e[type=marker,tag=myBlink]
kill @e[type=armor_stand,tag=myBlink]
gamemode adventure @s
tag @s remove ethereal
playsound minecraft:entity.enderman.teleport player @a[distance=..15] ~ ~1 ~ 2 0