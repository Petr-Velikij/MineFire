scoreboard players set aiming Random 20
scoreboard players set from_hip Random 30
scoreboard players set running Random 50
playsound minecraft:custom.gun.ripper.shot_2d player @s ~ ~ ~ 1 1
playsound minecraft:custom.gun.ripper.shot_1d player @a[distance=0.1..75] ~ ~ ~ 4.7 1


function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/ripper/shot2

execute if score @s Supply matches 0 run scoreboard players set @s Supply 3
function minecraft:gun/shot
scoreboard players add @s Scatter 20
execute if score *InHolder varTime matches 0 run scoreboard players set @s Supply 0

execute if score @s Supply matches 2 run tp @s ~ ~ ~ ~0.1 ~-0.5
execute if score @s Supply matches 3 run tp @s ~ ~ ~ ~-0.2 ~-0.5