function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/zveroboj/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players add *XR varTime 1000
scoreboard players add *YR varTime 1000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/zveroboj/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players remove *YR varTime 2000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/zveroboj/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players remove *XR varTime 2500
scoreboard players add *YR varTime 1000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/zveroboj/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players add *XR varTime 1000
scoreboard players remove *YR varTime 1500
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/zveroboj/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players add *YR varTime 3000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/zveroboj/shot2