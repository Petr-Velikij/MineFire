execute store result score MotionX varTime run data get entity @s Motion[0] 1000
execute store result score MotionY varTime run data get entity @s Motion[1] 1000
execute store result score MotionZ varTime run data get entity @s Motion[2] 1000

tp @s ~ ~ ~ facing entity @e[type=#target,distance=..30,sort=nearest,limit=1] eyes

scoreboard players set *YR.correct varTime 4000
scoreboard players set coefficient Random 0
function minecraft:vector/get_vec

scoreboard players operation *X varTime /= *100 CONST
scoreboard players operation *Y varTime /= *100 CONST
scoreboard players operation *Z varTime /= *100 CONST
scoreboard players operation MotionX varTime += *X varTime
scoreboard players operation MotionY varTime += *Y varTime
scoreboard players operation MotionZ varTime += *Z varTime

execute store result entity @s Motion[0] double 0.001 run scoreboard players get MotionX varTime
execute store result entity @s Motion[1] double 0.001 run scoreboard players get MotionY varTime
execute store result entity @s Motion[2] double 0.001 run scoreboard players get MotionZ varTime