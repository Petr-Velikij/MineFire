execute if score @s Supply matches 0 if score @s Time_PKM_2 matches ..4 run function minecraft:gun/hammer/go_shot
execute if score @s PKM_2 matches 1.. if score @s Supply matches 0 if score @s Time_PKM_2 matches 10.. unless entity @s[nbt={SelectedItem:{tag:{InHolder:0}}}] run function gun/hammer/shot3
execute if score @s Supply matches 2 unless entity @s[nbt={SelectedItem:{tag:{InHolder:0}}}] run function gun/hammer/shot3
execute unless score @s Supply matches 0 if score @s reload matches 0 run scoreboard players remove @s Supply 1

execute if entity @s[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}]}}}] run function minecraft:gun/no_arrow

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/hammer/reload_time