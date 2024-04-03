execute if score @s PKM_2 matches 1.. run function pistol/executioner/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function gun/model_pritsel

execute if score @s reload_pistol matches 0 if score @s Supply_pistol matches 1.. run function pistol/executioner/supply

execute unless score @s reload_pistol matches 0 if score @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] ammo matches 1.. run function pistol/executioner/reload_time