execute store result score *1 varTime run data get entity @s damage 100
scoreboard players set *2 varTime 75 
scoreboard players operation *3 varTime = distance varTime
scoreboard players operation *3 varTime *= *1 varTime
scoreboard players operation *3 varTime /= *2 varTime
#tellraw @a ["",{"text":"Сила выстрела: "},{"score":{"name":"*3","objective":"varTime"}}]
execute store result entity @s damage double 0.01 run scoreboard players get *3 varTime