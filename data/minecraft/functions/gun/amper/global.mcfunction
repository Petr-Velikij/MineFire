execute if score @s Supply matches 6.. if score @s modeFire matches 2 run function minecraft:gun/amper/heat_start
execute if score @s Supply matches 5 run function minecraft:gun/amper/shot
execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1

execute if entity @s[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}]}}}] run function minecraft:gun/no_arrow
execute if score @s PKM_2 matches 1.. run function minecraft:gun/amper/shot_prep
execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/amper/reload_time