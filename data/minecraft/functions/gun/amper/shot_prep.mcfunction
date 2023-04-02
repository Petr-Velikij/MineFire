execute store result score *InHolder varTime run data get entity @s SelectedItem.tag.InHolder 1
execute if score *InHolder varTime matches 1 run scoreboard players set @s modeFire 1

execute if score @s Supply matches 0 if score @s modeFire matches 1 if score @s Supply matches 0 run playsound minecraft:custom.gun.amper.heat_2d player @s ~ ~ ~ 0.5 2
execute if score @s Supply matches 0 if score @s modeFire matches 2 run playsound minecraft:custom.gun.amper.heat_2d player @s ~ ~ ~ 1 1
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot
execute if score @s Supply matches 0 if score @s modeFire matches 1 run scoreboard players set @s Supply 11
execute if score @s Supply matches 1..3 if score @s modeFire matches 1 run scoreboard players set @s Supply 7
execute if score @s Supply matches 0 if score @s modeFire matches 2 run scoreboard players set @s Supply 23

function minecraft:gun/shot
execute if score @s modeFire matches 2 run function minecraft:gun/shot