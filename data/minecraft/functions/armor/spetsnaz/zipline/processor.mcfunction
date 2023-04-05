scoreboard players operation buf ID.Zipline = @s ID.Zipline
execute as @e[type=armor_stand,tag=end_zipline,distance=..50] if score @s ID.Zipline = buf ID.Zipline run tag @s add my_end_zipline

scoreboard players operation *1 varTime = Loop1k20 CONST
scoreboard players operation *1 varTime %= *3 CONST
execute if score *1 varTime matches 0 facing entity @e[type=armor_stand,tag=my_end_zipline,distance=..50,limit=1] feet positioned ~ ~2 ~ run function armor/spetsnaz/zipline/rendering

scoreboard players add @s Loop 1
execute if score @s Loop matches 1200 as @e[type=arrow,tag=zipline,distance=..55] if score @s ID.Zipline = buf ID.Zipline run kill @s
execute if score @s Loop matches 1200 run kill @e[type=armor_stand,tag=my_end_zipline,distance=..50]
execute if score @s Loop matches 1200 run kill @s
tag @e[type=armor_stand,tag=my_end_zipline,distance=..50] remove my_end_zipline