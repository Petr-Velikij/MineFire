execute if score @s PKM_2 matches 1.. run function minecraft:gun/grenade_launcher/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel
execute unless score @s Supply matches 0 if score @s reload matches 0 run function minecraft:gun/grenade_launcher/supply

execute unless score @s sneak_time matches 0 if score @s Supply matches 1.. run scoreboard players set @s reload 0
execute unless score @s reload matches 0 if score @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] ammo matches 1.. run function minecraft:gun/grenade_launcher/reload_time