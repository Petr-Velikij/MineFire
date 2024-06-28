scoreboard players operation *1 varTime = @s Power
scoreboard players remove *1 varTime 100 
title @s times 0 3 0
title @s subtitle [{"translate":"space.100"},{"text":"+"},{"score":{"name":"*1","objective":"varTime"}},{"text":"%"}]

execute if score @s Power matches 100 run title @s title {"text":"\uE020","color": "#4e5c24"}
execute if score @s Power matches 102 run title @s title {"text":"\uE021","color": "#4e5c24"}
execute if score @s Power matches 104 run title @s title {"text":"\uE022","color": "#4e5c24"}
execute if score @s Power matches 106 run title @s title {"text":"\uE023","color": "#4e5c24"}
execute if score @s Power matches 108 run title @s title {"text":"\uE024","color": "#4e5c24"}
execute if score @s Power matches 110 run title @s title {"text":"\uE025","color": "#4e5c24"}
execute if score @s Power matches 112 run title @s title {"text":"\uE026","color": "#4e5c24"}
execute if score @s Power matches 114 run title @s title {"text":"\uE027","color": "#4e5c24"}
execute if score @s Power matches 118 run title @s title {"text":"\uE028","color": "#4e5c24"}
execute if score @s Power matches 120 run title @s title {"text":"\uE029","color": "#4e5c24"}
execute if score @s Power matches 122 run title @s title {"text":"\uE02A","color": "#4e5c24"}
execute if score @s Power matches 124 run title @s title {"text":"\uE02B","color": "#4e5c24"}
execute if score @s Power matches 126 run title @s title {"text":"\uE02C","color": "#4e5c24"}
execute if score @s Power matches 128 run title @s title {"text":"\uE02D","color": "#4e5c24"}
execute if score @s Power matches 130 run title @s title {"text":"\uE02E","color": "#4e5c24"}