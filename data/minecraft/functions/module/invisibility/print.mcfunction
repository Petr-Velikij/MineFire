scoreboard players operation *1 varTime = @s invisibility
scoreboard players operation *1 varTime /= *20 CONST

scoreboard players operation *2 varTime = @s invisibility
scoreboard players operation *2 varTime %= *20 CONST
scoreboard players operation *2 varTime /= *2 CONST

title @s times 0 3 0
title @s title {"text":""}
title @s subtitle [{"text":"Невидимость "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]