scoreboard players remove *Max varTime 1
scoreboard players operation Hp varTime = @p[distance=..4,tag=!team,scores={damage_taken=1..}] health
execute if score *Max varTime matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #no_collider if score Hp varTime matches 0 run function armor/predator/healt/loop