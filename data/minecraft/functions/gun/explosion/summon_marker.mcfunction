execute if score test_dist varTime <= OptDist varTime run scoreboard players operation *Damage varTime = Damage varTime
execute unless score test_dist varTime <= OptDist varTime run function minecraft:gun/explosion/mat_damage

summon marker ~ ~ ~ {Tags:["metka_player"]}
scoreboard players add Py varTime 5
execute as @e[type=marker,tag=metka_player,tag=!pos_set,limit=1,sort=nearest] run function gun/explosion/pos_marker

summon marker ~ ~ ~ {Tags:["metka_player"]}
scoreboard players add Py varTime 10
execute as @e[type=marker,tag=metka_player,tag=!pos_set,limit=1,sort=nearest] run function gun/explosion/pos_marker

summon marker ~ ~ ~ {Tags:["metka_player"]}
scoreboard players add Py varTime 5
execute as @e[type=marker,tag=metka_player,tag=!pos_set,limit=1,sort=nearest] run function gun/explosion/pos_marker