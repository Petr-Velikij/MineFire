scoreboard players set *X Random 0
scoreboard players set *Y Random 0

execute if predicate minecraft:random50 run scoreboard players set *X Random 1
execute if predicate minecraft:random50 run scoreboard players set *Y Random 1

function minecraft:random/number
execute if score *X Random matches 1 run scoreboard players operation *XR varTime += Output Random
execute if score *X Random matches 0 run scoreboard players operation *XR varTime -= Output Random

function minecraft:random/number
execute if score *Y Random matches 1 run scoreboard players operation *YR varTime += Output Random
execute if score *Y Random matches 0 run scoreboard players operation *YR varTime -= Output Random