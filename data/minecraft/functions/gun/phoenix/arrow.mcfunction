execute if score Power varTime matches 130 run data merge entity @e[type=arrow,tag=,sort=nearest,limit=1] {Fire:10}
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/phoenix/shot2

summon minecraft:arrow ~ ~ ~
execute if score Power varTime matches 130 run data merge entity @e[type=arrow,tag=,sort=nearest,limit=1] {Fire:10}
scoreboard players add *XR varTime 2000
scoreboard players add *YR varTime 2000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/phoenix/shot2

summon minecraft:arrow ~ ~ ~
execute if score Power varTime matches 130 run data merge entity @e[type=arrow,tag=,sort=nearest,limit=1] {Fire:10}
scoreboard players remove *YR varTime 4000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/phoenix/shot2

summon minecraft:arrow ~ ~ ~
execute if score Power varTime matches 130 run data merge entity @e[type=arrow,tag=,sort=nearest,limit=1] {Fire:10}
scoreboard players remove *XR varTime 5000
scoreboard players add *YR varTime 2000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/phoenix/shot2

summon minecraft:arrow ~ ~ ~
execute if score Power varTime matches 130 run data merge entity @e[type=arrow,tag=,sort=nearest,limit=1] {Fire:10}
scoreboard players add *XR varTime 2000
scoreboard players remove *YR varTime 3000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/phoenix/shot2

summon minecraft:arrow ~ ~ ~
execute if score Power varTime matches 130 run data merge entity @e[type=arrow,tag=,sort=nearest,limit=1] {Fire:10}
scoreboard players add *YR varTime 6000
function gun/zveroboj/get_vec
execute as @e[type=arrow,tag=,sort=nearest] run function gun/phoenix/shot2