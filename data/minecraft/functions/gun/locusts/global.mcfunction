execute if entity @s[tag=!no_scope] run function gun/locusts/target_start
execute unless score @s ID.target matches 0 run function minecraft:gun/locusts/print

execute if score @s PKM_2 matches 1.. run function minecraft:gun/locusts/shot
execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/locusts/reload_time