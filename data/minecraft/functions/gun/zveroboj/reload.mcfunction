function minecraft:gun/reload_one
playsound minecraft:item.crossbow.loading_end player @a[distance=..20] ~ ~ ~ 1 0.6
execute unless score @s ammo matches 1 if entity @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] run scoreboard players set @s[scores={reload=0}] reload 12
scoreboard players set @s Supply 16