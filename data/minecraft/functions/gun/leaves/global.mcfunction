execute unless score @s sneak_time matches 0 if score @s stamina matches ..0 if score @s PKM_2 matches 0 run function gun/leaves/breath
execute unless score @s sneak_time matches 0 if score @s stamina matches -50.. unless score buf ID.module matches 6 run scoreboard players remove @s stamina 5

execute if score @s PKM_2 matches 1.. run function minecraft:gun/leaves/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,crouch_one_cm=0..1,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,crouch_one_cm=0..1,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel
execute if entity @s[tag=!no_scope] run function minecraft:gun/leaves/distans/start
execute unless score @s Supply matches 0 run function minecraft:gun/leaves/supply

execute unless score @s reload matches 0 run function minecraft:gun/leaves/reload_time