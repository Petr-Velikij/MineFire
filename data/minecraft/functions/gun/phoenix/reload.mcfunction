function minecraft:gun/reload_one
playsound custom.gun.tessen.reload_2d player @s ~ ~1.6 ~ 0.6 1
execute unless score @s ammo matches 1 if entity @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] run scoreboard players set @s[scores={reload=0}] reload 12
scoreboard players set @s Supply 10