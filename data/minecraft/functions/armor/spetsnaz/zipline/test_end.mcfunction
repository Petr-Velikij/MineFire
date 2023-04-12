scoreboard players set *1 varTime 0
execute if entity @e[type=arrow,tag=zipline,distance=..2] run scoreboard players set *1 varTime 1
execute if score *1 varTime matches 0 run function armor/spetsnaz/zipline/end