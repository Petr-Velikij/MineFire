execute store result score *1 varTime run data get entity @s Motion[1] 10000
scoreboard players remove *1 varTime 200
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime

scoreboard players set *1 varTime 80
scoreboard players operation *1 varTime += @s Loop
execute store result score *2 varTime run data get entity @s damage 100
scoreboard players operation *2 varTime *= *1 varTime
execute store result entity @s damage double 0.0001 run scoreboard players get *2 varTime

#execute if score @s Loop matches ..3 store result entity @s damage double 0.007 run data get entity @s damage 100
#execute if score @s Loop matches 4.. store result entity @s damage double 0.0093 run data get entity @s damage 100

scoreboard players remove @s Loop 1
execute if score @s Loop matches 0 run kill @s