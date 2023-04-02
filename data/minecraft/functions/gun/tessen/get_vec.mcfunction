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