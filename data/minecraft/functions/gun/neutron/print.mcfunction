title @s times 0 3 0
title @s title {"text":""}
scoreboard players operation *1 varTime = @s Power
scoreboard players remove *1 varTime 100
execute if score @s Power matches ..109 run title @s subtitle [{"text":"☢"},{"translate":"space.80"},{"score":{"name":"*1","objective":"varTime"}},{"text":"%"}]
execute if score @s Power matches 110..150 run title @s subtitle [{"text":"☢"},{"translate":"space.74"},{"score":{"name":"*1","objective":"varTime"}},{"text":"%"}]
execute if score @s Power matches 151.. run title @s subtitle [{"text":"","color":"white"},{"text":"☢","color":"green"},{"translate":"space.74"},{"score":{"name":"*1","objective":"varTime"}},{"text":"%"}]