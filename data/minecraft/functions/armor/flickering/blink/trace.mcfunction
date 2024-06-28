scoreboard players remove i varTime 1
particle firework ~ ~1.6 ~ 0 0 0 0 1 force @a[distance=..125]
execute if score i varTime matches 1.. positioned ^ ^ ^0.5 run function armor/flickering/blink/trace