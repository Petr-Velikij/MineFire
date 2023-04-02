tag @s add NOtarget
scoreboard players set @s Loop 230
execute if score @s sneak_time matches 0 positioned ~ ~1.5 ~ run function minecraft:gun/amper/heat
execute unless score @s sneak_time matches 0 positioned ~ ~1.1 ~ run function minecraft:gun/amper/heat
tag @a remove NOtarget