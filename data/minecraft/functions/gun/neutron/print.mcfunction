title @s times 0 3 0
title @s title {"text":""}
execute if score @s Power matches ..150 run title @s subtitle [{"translate":"space.100"},{"score":{"name":"@s","objective":"Power"}},{"text":"%"}]
execute if score @s Power matches 151.. run title @s subtitle [{"translate":"space.100"},{"score":{"name":"@s","objective":"Power"},"color":"green"},{"text":"%"}]
execute if score @s Power matches 100 if entity @s[nbt={SelectedItem:{tag:{Damage:465}}}] run title @s subtitle [{"translate":"space.100"},{"text":"0%"}]