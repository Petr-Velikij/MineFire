scoreboard players remove Loop varTime 1
scoreboard players add i varTime 1
execute if score @s PKM_1 matches 1 run particle reverse_portal ~ ~ ~ 0 0 0 0.1 3 force @a[distance=..125]
execute positioned ~ ~-1 ~ if entity @a[gamemode=!spectator,distance=..1.5,tag=!owner] run function minecraft:armor/flickering/blink/marcer_r
execute if score End varTime matches 0 if score Loop varTime matches 1.. if block ^ ^ ^0.5 #no_collider if block ~ ~-0.5 ~ #no_collider positioned ^ ^ ^0.5 run function armor/flickering/blink/loop_r