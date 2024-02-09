scoreboard players operation *1 varTime = @s armor_cooldown
scoreboard players operation *1 varTime /= *20 CONST
scoreboard players operation *1 varTime %= *20 CONST
scoreboard players operation *2 varTime = @s armor_cooldown
scoreboard players operation *2 varTime %= *20 CONST
scoreboard players operation *2 varTime /= *2 CONST

title @s times 0 5 0
title @s title ""
execute if score @s armor_cooldown matches 0 run title @s subtitle [{"text":"2/2 +"},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]
execute if score @s armor_cooldown matches 1..400 run title @s subtitle [{"text":"1/2 +"},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]
execute if score @s armor_cooldown matches 401.. run title @s subtitle [{"text":"0/2 +"},{"score":{"name":"*1","objective":"varTime"}},{"text":","},{"score":{"name":"*2","objective":"varTime"}},{"text":"с"}]