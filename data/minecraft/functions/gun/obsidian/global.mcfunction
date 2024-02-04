execute if score @s modeFire matches 2 if score @s sneak_time matches 1 store result score *1 varTime run data get entity @s SelectedItem.tag.InHolder
execute if score @s modeFire matches 2 if score @s sneak_time matches 1 if score @s Power matches 150..174 if score *1 varTime matches 4.. run scoreboard players add @s Power 1
execute if score @s modeFire matches 2 if score @s sneak_time matches 1 if score @s Power matches 125..149 if score *1 varTime matches 3.. run scoreboard players add @s Power 1
execute if score @s modeFire matches 2 if score @s sneak_time matches 1 if score @s Power matches ..124 if score *1 varTime matches 2.. run scoreboard players add @s Power 1
execute if score @s sneak_time matches 0 unless score @s Power matches 100 run scoreboard players set @s Power 100
execute if score @s Power matches 101.. run function minecraft:gun/obsidian/print

execute if score @s PKM_2 matches 1.. run function minecraft:gun/obsidian/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/obsidian/reload_time