scoreboard players set buf ID.armor 0
execute if entity @s[tag=up] run scoreboard players set buf ID.armor 7
scoreboard players set buf ID.module 0
scoreboard players operation buf ID.Owner = @s ID.Owner

#execute store result score *XR varTime run data get entity @s Rotation[1] 1000
#scoreboard players operation *XR varTime *= *-1 CONST
#execute store result score *YR varTime run data get entity @s Rotation[0] 1000
#scoreboard players operation *YR varTime *= *-1 CONST

scoreboard players operation *XR varTime = @s varTimeEntity1
scoreboard players operation *YR varTime = @s varTimeEntity2

scoreboard players remove *XR varTime 10000

summon minecraft:arrow ~ ~0.1 ~
scoreboard players add *YR varTime 5000
function gun/arrow/gun/starfall/new/get_vec
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function gun/starfall/shot2

summon minecraft:arrow ~ ~0.1 ~
scoreboard players remove *YR varTime 10000
function gun/arrow/gun/starfall/new/get_vec
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function gun/starfall/shot2

scoreboard players operation *1 varTime = @s ArrowLive
scoreboard players add *1 varTime 5
execute at @s as @e[type=arrow,tag=starfall,sort=nearest,limit=2,distance=0.01..10] run scoreboard players operation @s ArrowLive = *1 varTime