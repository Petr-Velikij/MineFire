function minecraft:gun/reload_one
execute if score @s ammo matches 1.. if entity @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] run scoreboard players set @s[scores={reload=0}] reload 6
scoreboard players set @s Supply 10