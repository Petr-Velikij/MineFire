title @s times 0 4 0
title @s title {"text":""}
execute if score @s Power matches 100 run title @s subtitle [{"score":{"name":"@s","objective":"ammo"}},{"translate":"space.90"},{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s Power matches 10..99 run title @s subtitle [{"score":{"name":"@s","objective":"ammo"}},{"translate":"space.96"},{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s Power matches ..9 run title @s subtitle [{"score":{"name":"@s","objective":"ammo"}},{"translate":"space.102"},{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]