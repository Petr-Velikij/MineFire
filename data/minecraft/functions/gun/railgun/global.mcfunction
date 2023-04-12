execute unless score @s sneak_time matches 0 if score @s stamina matches ..0 if score @s PKM_2 matches 0 run function gun/railgun/breath
execute unless score @s sneak_time matches 0 if score @s stamina matches -50.. unless score idModule varTime matches 6 run scoreboard players remove @s stamina 10

execute if score @s PKM_2 matches 1.. run function minecraft:gun/railgun/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,crouch_one_cm=0..1,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,crouch_one_cm=0..1,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s Supply matches 0 run function minecraft:gun/railgun/supply
execute unless score @s reload matches 0 if score @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] ammo matches 1.. run function minecraft:gun/railgun/reload_time