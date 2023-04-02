scoreboard players operation buf ID.target = @s ID.target
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.target run tag @s add target
tp @s ~ ~ ~ facing entity @p[tag=target] eyes
tag @p[tag=target] remove target

execute store result score *XR varTime run data get entity @s Rotation[1] 1000
execute store result score *YR varTime run data get entity @s Rotation[0] 1000

scoreboard players operation Dx varTime = @s varTimeEntity1
scoreboard players operation Dx varTime -= *XR varTime

scoreboard players operation Dy varTime = @s varTimeEntity2
scoreboard players operation Dy varTime -= *YR varTime
execute if score Dy varTime matches 180000.. run scoreboard players set *1 varTime -360000
execute if score Dy varTime matches 180000.. run scoreboard players operation *1 varTime += Dy varTime
execute if score Dy varTime matches ..-180000 run scoreboard players set *1 varTime 360000
execute if score Dy varTime matches ..-180000 run scoreboard players operation *1 varTime -= Dy varTime
execute unless score Dy varTime matches -180000..180000 run scoreboard players operation Dy varTime = *1 varTime

scoreboard players set MotionLocusts varTime 50
scoreboard players operation MotionLocusts varTime *= @s ArrowLive
execute if score MotionLocusts varTime matches 8001.. run scoreboard players set MotionLocusts varTime 8000
execute if score Dx varTime > MotionLocusts varTime run scoreboard players operation Dx varTime = MotionLocusts varTime
execute if score Dy varTime > MotionLocusts varTime run scoreboard players operation Dy varTime = MotionLocusts varTime
scoreboard players operation MotionLocusts varTime *= *-1 CONST
execute if score Dx varTime < MotionLocusts varTime run scoreboard players operation Dx varTime = MotionLocusts varTime
execute if score Dy varTime < MotionLocusts varTime run scoreboard players operation Dy varTime = MotionLocusts varTime

scoreboard players operation @s varTimeEntity1 -= Dx varTime
scoreboard players operation @s varTimeEntity2 -= Dy varTime
scoreboard players operation *XR varTime = @s varTimeEntity1 
scoreboard players operation *YR varTime = @s varTimeEntity2

##ВРЕМЕННО
#execute if score *XR varTime matches ..-90000 run scoreboard players add *YR varTime 180000
#execute if score *XR varTime matches ..-90000 run scoreboard players set *XR varTime -89000

execute if score *YR varTime matches ..0 run scoreboard players add *YR varTime 360000
execute if score *YR varTime matches 360001.. run scoreboard players remove *YR varTime 360000

# Получаем косинус и синус для каждой угловой координате
function minecraft:mat/cos/getx
function minecraft:mat/cos/gety
function minecraft:mat/sin/getx
function minecraft:mat/sin/gety

# Получаем координату X вектора взгляда
scoreboard players operation *X varTime = *COSX varTime
scoreboard players operation *X varTime *= *SINY varTime
scoreboard players operation *X varTime /= *-10000 CONST

# Получаем координату Z вектора взгляда
scoreboard players operation *Z varTime = *COSX varTime
scoreboard players operation *Z varTime *= *COSY varTime
scoreboard players operation *Z varTime /= *10000 CONST

# Получаем координату Y вектора взгляда
scoreboard players operation *Y varTime = *SINX varTime
scoreboard players operation *Y varTime *= *-1 CONST

execute store result entity @s Motion[0] double 0.000075 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.000075 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.000075 run scoreboard players get *Z varTime

scoreboard players operation @s varTimeEntity1 = *XR varTime
scoreboard players operation @s varTimeEntity2 = *YR varTime