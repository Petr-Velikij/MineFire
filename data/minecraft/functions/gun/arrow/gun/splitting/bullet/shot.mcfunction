data merge entity @s {damage:5d,NoGravity:1b,Tags:["splitting2"],Owner:[I;0,0,0,0]}
scoreboard players set @s Loop 0
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 200
scoreboard players set @s DamageLegs 100

scoreboard players operation *XR varTime = *1 varTime
scoreboard players operation *YR varTime = *2 varTime
function minecraft:random/random
execute if score *YR varTime matches ..0 run scoreboard players add *YR varTime 360000
function minecraft:mat/cos/getx
function minecraft:mat/cos/gety
function minecraft:mat/sin/getx
function minecraft:mat/sin/gety
scoreboard players operation *X varTime = *COSX varTime
scoreboard players operation *X varTime *= *SINY varTime
scoreboard players operation *X varTime /= *-10000 CONST
scoreboard players operation *Z varTime = *COSX varTime
scoreboard players operation *Z varTime *= *COSY varTime
scoreboard players operation *Z varTime /= *10000 CONST
scoreboard players operation *Y varTime = *SINX varTime
scoreboard players operation *Y varTime *= *-1 CONST

execute store result entity @s Motion[0] double 0.0006 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0006 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0006 run scoreboard players get *Z varTime

function gun/set_uuid