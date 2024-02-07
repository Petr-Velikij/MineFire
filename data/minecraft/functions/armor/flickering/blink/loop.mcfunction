scoreboard players remove Loop varTime 1
scoreboard players add i varTime 1
execute if score @s PKM_1 matches 1 run particle firework ~ ~1.5 ~ 0 0 0 0 1 force @a[distance=..125]
execute if score End varTime matches 0 unless block ^ ^ ^0.5 #no_collider align xyz positioned ~0.5 ~ ~0.5 run function armor/flickering/blink/marcer
execute if score End varTime matches 0 unless block ~ ~-0.5 ~ #no_collider align xyz positioned ~0.5 ~ ~0.5 run function armor/flickering/blink/marcer
execute if score End varTime matches 0 if score Loop varTime matches 1.. positioned ^ ^ ^0.5 run function armor/flickering/blink/loop