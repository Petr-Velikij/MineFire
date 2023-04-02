title @s times 0 3 0
title @s title {"text":""}
execute unless score @s ID.module matches 1 run title @s subtitle [{"translate":"space.100"},{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s ID.module matches 1 run title @s subtitle [{"translate":"space.100"},{"score":{"name":"@s","objective":"Power"},"color":"aqua"},{"text":"%"}]