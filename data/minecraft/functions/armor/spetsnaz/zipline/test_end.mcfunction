scoreboard players set *1 varTime 0
scoreboard players operation buf ID.target = @s ID.Player
execute as @e[type=marker,tag=zipline,distance=..4] if score @s ID.target = buf ID.target run tag @s add my_zipline

execute if entity @e[type=marker,tag=my_zipline,distance=..4] run scoreboard players set *1 varTime 1
execute as @e[type=marker,tag=my_zipline,distance=..4,limit=1] at @s run tp @s ^ ^ ^0.5
execute positioned as @e[type=marker,tag=my_zipline,distance=..4,limit=1] run tp @s ~ ~ ~
effect give @s levitation 1 255 true

execute if score *1 varTime matches 1 at @e[type=marker,tag=my_zipline,distance=..4,limit=1] positioned ^ ^ ^0.5 if entity @e[type=armor_stand,tag=zipline,distance=..0.5] run function armor/spetsnaz/zipline/end
execute if score @s sneak_time matches 1 run function armor/spetsnaz/zipline/end
execute if score *1 varTime matches 0 run function armor/spetsnaz/zipline/end
tag @e[type=marker,tag=my_zipline,distance=..4] remove my_zipline