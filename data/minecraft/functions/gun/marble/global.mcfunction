execute if score @s PKM_2 matches 1.. run function minecraft:gun/marble/shot
function minecraft:gun/marble/print

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 if score @s ammo_point matches 1.. run function minecraft:gun/marble/reload_time