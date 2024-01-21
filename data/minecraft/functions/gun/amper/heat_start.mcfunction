tag @s add Owner

scoreboard players set MaxHeat varTime 0
tag @s add NOtarget
scoreboard players set @s Loop 300
execute if score @s sneak_time matches 0 positioned ~ ~1.5 ~ run function minecraft:gun/amper/heat
execute unless score @s sneak_time matches 0 positioned ~ ~1.1 ~ run function minecraft:gun/amper/heat
tag @a remove NOtarget
execute if score MaxHeat varTime matches 1.. run function gun/amper/print

scoreboard players set @s Loop 300
execute if score @s sneak_time matches 0 positioned ~ ~1.5 ~ run function minecraft:gun/amper/spawn_marker
execute unless score @s sneak_time matches 0 positioned ~ ~1.1 ~ run function minecraft:gun/amper/spawn_marker
scoreboard players operation *1 varTime = @s Loop
scoreboard players set @s Loop 330
scoreboard players operation @s Loop -= *1 varTime
scoreboard players operation @s Loop -= @s Supply
scoreboard players operation @s Loop -= @s Supply
execute if score @s sneak_time matches 0 positioned ~ ~1.3 ~ positioned ^-0.5 ^ ^ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function minecraft:gun/amper/heat_owner
execute unless score @s sneak_time matches 0 positioned ~ ~0.9 ~ facing entity @e[tag=end_point,type=marker,limit=1,distance=..100] feet run function minecraft:gun/amper/heat_owner
kill @e[tag=end_point,type=marker,limit=1,distance=..100]
tag @s remove Owner