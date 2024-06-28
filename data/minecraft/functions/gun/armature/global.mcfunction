execute unless score @s[nbt=!{SelectedItem:{tag:{InHolder:0}}}] sneak_time matches 0 if score @s Time_PKM_2 matches 12.. if score @s Power matches ..129 run scoreboard players add @s Power 2
execute unless score @s sneak_time matches 0 if score @s Power matches 112 run playsound custom.gun.armature.reload_2d_1 player @s ~ ~1.6 ~ 1.5 1.2
execute unless score @s sneak_time matches 0 if score @s Power matches 126 run playsound custom.gun.armature.reload_2d_1 player @s ~ ~1.6 ~ 2 1.4

execute unless score @s sneak_time matches 0 if score @s reload matches 0 run function gun/armature/print
execute if score @s PKM_2 matches 1.. run function minecraft:gun/armature/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute if score @s reload matches 0 if score @s Supply matches 1.. run function minecraft:gun/armature/supply
execute unless score @s sneak_time matches 0 if score @s Supply matches 1.. run scoreboard players set @s reload 0
execute unless score @s reload matches 0 if score @s[nbt=!{SelectedItem:{tag:{Damage:0}}}] ammo matches 1.. run function minecraft:gun/armature/reload_time