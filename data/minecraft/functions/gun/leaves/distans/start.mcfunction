tag @s add Owner
scoreboard players set *Max varTime 500
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.5 run function minecraft:gun/leaves/distans/loop
tag @s remove Owner
scoreboard players set *1 varTime 503
scoreboard players operation *1 varTime -= *Max varTime
scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *1 varTime /= *2 CONST

scoreboard players operation *2 varTime %= *2 CONST
scoreboard players operation *2 varTime *= *5 CONST

title @s times 0 3 0
title @s title {"text":""}
execute if score *1 varTime matches ..250 run title @s subtitle [{"translate":"space.100"},{"score":{"name":"*1","objective":"varTime"}},{"text":"."},{"score":{"name":"*2","objective":"varTime"}},{"text":"m"}]
execute unless score *1 varTime matches ..250 run title @s subtitle [{"translate":"space.100"},{"text":"???m"}]