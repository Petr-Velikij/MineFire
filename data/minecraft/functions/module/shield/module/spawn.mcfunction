summon armor_stand ~ ~ ~ {Small:1b,Marker:1b,Invisible:1b,Tags:["shield","new_shield"],ArmorItems:[{},{},{},{id:"minecraft:sea_lantern",Count:1b}]}
scoreboard players operation @e[type=armor_stand,tag=new_shield,limit=1,sort=nearest] ID.Owner = @s ID.Player
tag @e[type=armor_stand,tag=new_shield,limit=1,sort=nearest] remove new_shield