function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function pistol/gentleman/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players add *XR varTime 1000
scoreboard players add *YR varTime 500
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function pistol/gentleman/shot2

summon minecraft:arrow ~ ~ ~
scoreboard players remove *YR varTime 1000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function pistol/gentleman/shot2