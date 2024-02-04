tag @e[type=armor_stand,tag=zipline,distance=..1,sort=nearest] add start
scoreboard players operation buf ID.Zipline = @e[type=armor_stand,tag=start,distance=..1,sort=nearest] ID.Zipline
execute as @e[type=armor_stand,tag=zipline,tag=!start,distance=..50] if score @s ID.Zipline = buf ID.Zipline run tag @s add my_zipline

execute at @e[type=armor_stand,tag=zipline,distance=..1,sort=nearest] run summon marker ~ ~ ~ {Tags:["zipline","new_zipline"]}
execute as @e[type=marker,tag=new_zipline,distance=..5] at @s run function armor/spetsnaz/zipline/new_ride
scoreboard players operation @e[type=marker,tag=new_zipline,distance=..5] ID.target = @s ID.Player
tag @s add move_zipline

playsound minecraft:custom.armor.spetsnaz.zipline player @s ~ ~ ~ 1 1
playsound custom.armor.spetsnaz.zipline_start player @s ~ ~ ~ 1 1

tag @e[type=armor_stand,tag=my_zipline,distance=..50] remove my_zipline
tag @e[type=armor_stand,tag=start,distance=..5] remove start
tag @e[type=arrow,tag=new_zipline,distance=..5] remove new_zipline