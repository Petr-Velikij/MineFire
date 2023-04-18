execute if score @s Power matches 101.. run function minecraft:gun/makusya/point_start

execute if score @s PKM_2 matches 1.. run function minecraft:gun/makusya/shot

execute unless score @s reload matches 0 if score @s Power matches 100 run function minecraft:gun/makusya/reload_time