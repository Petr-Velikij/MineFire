scoreboard players set aiming Random 4
scoreboard players set from_hip Random 20
scoreboard players set running Random 70

execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.marble.shot_2d player @s ~ ~1.6 ~ 0.7 1
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.marble.shot_2d player @s ~ ~1.6 ~ 0.7 1.2
execute unless score @s ID.module matches 1 run playsound minecraft:custom.gun.marble.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1
execute if score @s ID.module matches 1 run playsound minecraft:custom.gun.marble.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 5 1.2


function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/marble/shot2

scoreboard players remove @s Power 5
execute if score @s ID.module matches 1 run scoreboard players remove @s Power 2
execute if score @s Power matches ..0 run scoreboard players set @s Power 0
function gun/marble/shot_mat

tp @s ~ ~ ~ ~ ~-0.7