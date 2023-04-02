execute if score @s PKM_2 matches 1.. run function minecraft:gun/zveroboj/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute if score @s reload matches 0 if score @s Supply matches 1.. run function minecraft:gun/zveroboj/supply
execute unless score @s sneak_time matches 0 if score @s Supply matches 1.. run scoreboard players set @s reload 0
execute unless score @s reload matches 0 if score @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] ammo matches 1.. run function minecraft:gun/zveroboj/reload_time