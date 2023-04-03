scoreboard players operation buf ID.target = @s ID.target
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.target run tag @s add target
execute at @p[tag=target] run summon marker ~ ~0.2 ~ {Tags:["point"]}
tp @s ~ ~ ~ facing entity @e[type=marker,tag=point,limit=1]
function gun/arrow/gun/anfisa/mat_dist
tag @p[tag=target] remove target
kill @e[type=marker,tag=point,limit=1]

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

execute if score dist varTime matches 20.. run scoreboard players set MotionAnfisa varTime 500
execute unless score dist varTime matches 20.. run scoreboard players set MotionAnfisa varTime 3000

execute if score Dx varTime > MotionAnfisa varTime run scoreboard players operation Dx varTime = MotionAnfisa varTime
execute if score Dy varTime > MotionAnfisa varTime run scoreboard players operation Dy varTime = MotionAnfisa varTime
scoreboard players operation MotionAnfisa varTime *= *-1 CONST
execute if score Dx varTime < MotionAnfisa varTime run scoreboard players operation Dx varTime = MotionAnfisa varTime
execute if score Dy varTime < MotionAnfisa varTime run scoreboard players operation Dy varTime = MotionAnfisa varTime

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

execute store result entity @s Motion[0] double 0.00085 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00085 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00085 run scoreboard players get *Z varTime

scoreboard players operation @s varTimeEntity1 = *XR varTime
scoreboard players operation @s varTimeEntity2 = *YR varTime