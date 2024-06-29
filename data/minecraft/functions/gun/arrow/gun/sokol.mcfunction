execute store result entity @s damage double 0.010118 run data get entity @s damage 100

execute store result score *1 varTime run data get entity @s Motion[1] 10000
execute if score @s ArrowLive matches 10.. run scoreboard players remove *1 varTime 80
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get *1 varTime