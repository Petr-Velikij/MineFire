scoreboard players set *1 varTime 150
scoreboard players set *2 varTime 0
execute positioned ~ ~1.6 ~ run function armor/spetsnaz/zipline/rendering_set_loop
execute if score *2 varTime matches 1 if score @s PKM_1 matches 1 run function armor/spetsnaz/zipline/new