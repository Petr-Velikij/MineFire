execute if score @s reload matches 0 if score @s Power matches 101.. run function gun/chastiser/print

execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1
execute if score @s reload matches 0 if score @s Supply matches 1 if score @s Time_PKM_2 matches ..5 if score @s Power matches 101.. run function minecraft:gun/chastiser/shot3
execute if score @s Power matches 101.. if score @s[nbt=!{SelectedItem:{tag:{Damage:465}}}] PKM_2 matches 1.. run function minecraft:gun/no_arrow
execute if entity @s[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}]}}}] run function minecraft:gun/no_arrow
execute if score @s Power matches 100 if score @s PKM_2 matches 1.. run function minecraft:gun/chastiser/shot3

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/chastiser/reload_time