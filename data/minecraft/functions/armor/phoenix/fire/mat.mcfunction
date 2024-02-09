scoreboard players set coefficient Random 7200
scoreboard players set *XR varTime 0
scoreboard players set *YR varTime 0
function minecraft:random/random

execute if score *YR varTime matches ..0 run scoreboard players add *YR varTime 360000
execute if score *YR varTime matches 360001.. run scoreboard players remove *YR varTime 360000

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
execute if score *Y varTime matches ..-1 run scoreboard players operation *Y varTime *= *-1 CONST

function armor/phoenix/fire/motion