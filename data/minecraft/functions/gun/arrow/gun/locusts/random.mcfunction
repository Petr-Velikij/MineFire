scoreboard players set *X Random 0
execute if predicate minecraft:random50 run scoreboard players set *X Random 1
function minecraft:random/number
execute if score *X Random matches 1 run scoreboard players operation *1 varTime += Output Random
execute if score *X Random matches 0 run scoreboard players operation *1 varTime -= Output Random