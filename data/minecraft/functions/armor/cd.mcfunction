scoreboard players operation *1 varTime = @s armor_cooldown
scoreboard players operation *1 varTime /= *20 CONST
scoreboard players operation *2 varTime = @s armor_cooldown
scoreboard players operation *2 varTime %= *20 CONST
scoreboard players operation *2 varTime /= *2 CONST

title @s times 0 5 0
title @s title {"text":""}
execute unless score *1 varTime matches 0 unless score *2 varTime matches 0 run title @s subtitle [{"text":"Перезарядка "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]
execute if score *1 varTime matches 0 unless score *2 varTime matches 0 run title @s subtitle [{"text":"Перезарядка "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]
execute unless score *1 varTime matches 0 if score *2 varTime matches 0 run title @s subtitle [{"text":"Перезарядка "},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]
execute if score *1 varTime matches 0 if score *2 varTime matches 0 run title @s subtitle [{"text":"Готово"}]