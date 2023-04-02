scoreboard players operation *1 varTime = @s module_cooldown
scoreboard players operation *1 varTime /= *20 CONST

scoreboard players operation *2 varTime = @s module_cooldown
scoreboard players operation *2 varTime %= *20 CONST
scoreboard players operation *2 varTime /= *2 CONST

title @s times 0 5 2
title @s title {"text":""}
title @s subtitle [{"text":"Зарядка "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]