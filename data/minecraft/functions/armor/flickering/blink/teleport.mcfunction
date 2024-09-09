scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=armor_stand,tag=blink] if score @s ID.Owner = buf ID.Owner run tag @s add myBlink
execute as @e[type=marker,tag=blink_to] if score @s ID.Owner = buf ID.Owner run tag @s add myBlink

spectate @e[type=armor_stand,tag=blink,tag=myBlink,limit=1]

execute as @e[type=armor_stand,tag=blink,tag=myBlink] at @s run tp @s ^ ^0.3 ^1 facing entity @e[type=marker,tag=blink_to,tag=myBlink,limit=1,distance=..50]
#execute positioned as @e[type=marker,tag=blink,tag=myBlink] run tp @s ~ ~ ~

execute positioned as @e[type=armor_stand,tag=blink,tag=myBlink] if entity @e[type=marker,tag=blink_to,tag=myBlink,limit=1,distance=..1] run function armor/flickering/blink/end

execute positioned as @e[type=armor_stand,tag=blink,tag=myBlink] run particle firework ~ ~1.8 ~ 0 0 0 0 1 force @a[distance=..125]
tag @e[type=marker,tag=myBlink] remove myBlink
tag @e[type=armor_stand,tag=myBlink] remove myBlink