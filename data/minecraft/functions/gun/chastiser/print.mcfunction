scoreboard players set *1 varTime -100
scoreboard players operation *1 varTime += @s Power
title @s times 0 3 0
title @s title {"text":""}
title @s subtitle [{"translate":"space.100"},{"text":"+"},{"score":{"name":"*1","objective":"varTime"}},{"text":"%"}]