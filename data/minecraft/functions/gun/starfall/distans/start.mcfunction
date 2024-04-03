tag @s add Owner
scoreboard players set *Max varTime 250
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.5 run function minecraft:gun/starfall/distans/loop
tag @s remove Owner
scoreboard players set *1 varTime 253
scoreboard players operation *1 varTime -= *Max varTime
scoreboard players operation *2 varTime = *1 varTime
scoreboard players operation *1 varTime /= *2 CONST

scoreboard players operation *2 varTime %= *2 CONST
scoreboard players operation *2 varTime *= *5 CONST

scoreboard players set *4 varTime 8
execute store result score *XR varTime run data get entity @s Rotation[1] -10
scoreboard players operation *3 varTime = *XR varTime
scoreboard players operation *3 varTime /= *4 varTime
scoreboard players add *3 varTime 50
scoreboard players operation *XR varTime /= *10 CONST

title @s times 0 3 0
title @s title [{"score":{"name":"*XR","objective":"varTime"}},{"text":"* "},{"score":{"name":"*3","objective":"varTime"}},{"text":"m"}]
execute if score *1 varTime matches ..125 run title @s subtitle [{"score":{"name":"*1","objective":"varTime"}},{"text":"."},{"score":{"name":"*2","objective":"varTime"}},{"text":"m"}]
execute unless score *1 varTime matches ..125 run title @s subtitle [{"text":"125+m"}]