particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 0 20 force @a[distance=..75]
scoreboard players remove @s module_effect 1
execute if score @s damage_taken matches 1.. run function module/regeneration/end