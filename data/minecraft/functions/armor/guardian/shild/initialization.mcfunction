scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @e[distance=..10,tag=Mshild] if score @s ID.Owner = buf ID.Owner run tag @s add my_shild

execute store result score LDx varTime run data get entity @e[type=marker,tag=my_shild,tag=ld,distance=..10,limit=1] Pos[0] 10
execute store result score LDy varTime run data get entity @e[type=marker,tag=my_shild,tag=ld,distance=..10,limit=1] Pos[1] 10
execute store result score LDz varTime run data get entity @e[type=marker,tag=my_shild,tag=ld,distance=..10,limit=1] Pos[2] 10

execute store result score RDx varTime run data get entity @e[type=marker,tag=my_shild,tag=rd,distance=..10,limit=1] Pos[0] 10
execute store result score RDz varTime run data get entity @e[type=marker,tag=my_shild,tag=rd,distance=..10,limit=1] Pos[2] 10

execute store result score LUy varTime run data get entity @e[type=marker,tag=my_shild,tag=lu,distance=..10,limit=1] Pos[1] 10

scoreboard players operation V1x varTime = RDx varTime
scoreboard players operation V1x varTime -= LDx varTime
scoreboard players operation V1z varTime = RDz varTime
scoreboard players operation V1z varTime -= LDz varTime

scoreboard players set V2x varTime 1
scoreboard players operation V2y varTime = LUy varTime
scoreboard players operation V2y varTime -= LDy varTime

#tellraw @a "initialization"
function armor/guardian/shild/test_arrow

tag @e[tag=my_shild,distance=..15] remove my_shild
tag @e[type=arrow,tag=no_detected,distance=..15] remove no_detected