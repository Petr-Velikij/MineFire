scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=marker,tag=blink] if score @s ID.Owner = buf ID.Owner run tag @s add myBlink
execute as @e[type=marker,tag=blink_to] if score @s ID.Owner = buf ID.Owner run tag @s add myBlink

execute as @e[type=marker,tag=blink,tag=myBlink] at @s run tp @s ^ ^ ^1
execute positioned as @e[type=marker,tag=blink,tag=myBlink] run tp @s ~ ~ ~

execute positioned as @e[type=marker,tag=blink,tag=myBlink] if entity @e[type=marker,tag=blink_to,tag=myBlink,limit=1,distance=..1] run function armor/flickering/blink/end

particle firework ~ ~1.8 ~ 0 0 0 0 1 force @a[distance=..125]
tag @e[type=marker,tag=myBlink] remove myBlink