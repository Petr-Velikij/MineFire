execute unless score @s sneak_time matches 0 run scoreboard players operation coefficient Random = aiming Random
execute if score buf ID.module matches 6 if score @s module_effect matches 1.. run scoreboard players operation coefficient Random = aiming Random
execute if score @s sneak_time matches 0 run scoreboard players operation coefficient Random = from_hip Random
execute if score @s aviate_one_cm matches 1.. run scoreboard players operation coefficient Random = from_hip Random

execute if score buf ID.module matches 6 run scoreboard players operation coefficient Random *= *8 CONST
execute if score buf ID.module matches 6 run scoreboard players operation coefficient Random /= *10 CONST

scoreboard players operation *1 varTime = running Random
scoreboard players operation *1 varTime -= coefficient Random
scoreboard players operation *2 varTime = @s Scatter
execute if score *2 varTime matches 201.. run scoreboard players set *2 varTime 200
scoreboard players operation *1 varTime *= *2 varTime
scoreboard players operation *1 varTime /= *200 CONST
execute if score @s ID.armor matches 3 run scoreboard players operation *1 varTime /= *2 CONST
execute if score buf ID.module matches 6 run scoreboard players operation *1 varTime /= *2 CONST
execute if score buf ID.module matches 6 if score @s module_effect matches 1.. run scoreboard players set *1 varTime 0
scoreboard players operation coefficient Random += *1 varTime

execute if score @s aviate_one_cm matches 1.. run scoreboard players operation coefficient Random *= *2 CONST
#tellraw @a ["",{"text":"Итоговая точность: "},{"score":{"name":"coefficient","objective":"Random"}}]