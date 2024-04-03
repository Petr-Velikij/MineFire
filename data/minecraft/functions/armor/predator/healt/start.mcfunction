scoreboard players set Hp varTime 0
scoreboard players set *Max varTime 150
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.5 run function armor/predator/healt/loop

title @s times 0 5 2
title @s title {"text":""}
execute unless score Hp varTime matches 0 run title @s subtitle [{"score":{"name":"Hp","objective":"varTime"}},{"text":"\u2764","color": "red"}]