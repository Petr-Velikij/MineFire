function minecraft:gun/reload_one
execute unless score @s ammo matches 1 if entity @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] if score @s sneak_time matches 0 run scoreboard players set @s reload_pistol 20
scoreboard players set @s Supply_pistol 12