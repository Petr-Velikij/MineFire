summon arrow ~ ~ ~ {Motion:[0.0,-10.0,0.0]}

execute store result score Px varTime run data get entity @s Pos[0] 10
execute store result score Py varTime run data get entity @s Pos[1] 10
execute store result score Pz varTime run data get entity @s Pos[2] 10
execute store result score *1 varTime run data get entity @s Motion[0] 10
execute store result score *2 varTime run data get entity @s Motion[1] 10
execute store result score *3 varTime run data get entity @s Motion[2] 10
scoreboard players operation Px varTime += *1 varTime
scoreboard players operation Py varTime += *2 varTime
scoreboard players operation Pz varTime += *3 varTime

scoreboard players add Py varTime 23

execute store result entity @e[type=arrow,sort=nearest,limit=1,tag=!] Pos[0] double 0.1 run scoreboard players get Px varTime
execute store result entity @e[type=arrow,sort=nearest,limit=1,tag=!] Pos[1] double 0.1 run scoreboard players get Py varTime
execute store result entity @e[type=arrow,sort=nearest,limit=1,tag=!] Pos[2] double 0.1 run scoreboard players get Pz varTime

execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function gun/explosion/motion2