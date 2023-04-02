function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/tessen/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players operation *YR varTime -= accuracy varTime
scoreboard players operation *YR varTime -= accuracy varTime
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/tessen/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players operation *YR varTime += accuracy varTime
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/tessen/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players operation *YR varTime += accuracy varTime
scoreboard players operation *YR varTime += accuracy varTime
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/tessen/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players operation *YR varTime += accuracy varTime
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/tessen/shot2