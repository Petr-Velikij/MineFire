execute if score @s Supply matches 3 run function minecraft:gun/gorynych/shot3
execute if score @s Supply matches 2 run function minecraft:gun/gorynych/shot3
execute if score @s Supply matches 1 run function minecraft:gun/gorynych/shot3
execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1

execute if score @s PKM_2 matches 1.. run function minecraft:gun/gorynych/shot
execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/gorynych/reload_time