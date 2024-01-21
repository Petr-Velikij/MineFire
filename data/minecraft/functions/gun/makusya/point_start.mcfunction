tag @s add NOtarget
scoreboard players set @s Loop 250
execute positioned ~ ~1.62 ~ run function gun/makusya/target_search
tag @a[tag=target] remove target
tag @s remove NOtarget

scoreboard players set *1 varTime 300
scoreboard players operation *1 varTime -= @s Power
execute if score *1 varTime matches 100.. run scoreboard players set *1 varTime 100
title @s times 0 3 5
title @s title {"text":""}
title @s subtitle [{"translate":"space.100"},{"text":"+"},{"score":{"name":"*1","objective":"varTime"}},{"text":"%"}]