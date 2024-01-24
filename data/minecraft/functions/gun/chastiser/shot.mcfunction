scoreboard players set aiming Random 40
scoreboard players set from_hip Random 90
scoreboard players set running Random 200

playsound minecraft:entity.iron_golem.repair player @a[distance=..75] ~ ~ ~ 6.5 1.7
playsound minecraft:entity.shulker.open player @a[distance=75..130] ~ ~ ~ 8.5 1.3

function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
scoreboard players operation coefficient Random *= *100 CONST
scoreboard players operation coefficient Random /= @s Power
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/chastiser/shot2

execute if score @s Supply matches 0 run scoreboard players set @s Supply 3
function minecraft:gun/shot
scoreboard players add @s Scatter 20
execute if score *InHolder varTime matches 0 run scoreboard players set @s Supply 0
scoreboard players add @s Power 20

function minecraft:random/number
execute if score Number Random matches ..32 run tp @s ~ ~ ~ ~0.4 ~-0.6
execute unless score Number Random matches ..32 run tp @s ~ ~ ~ ~-0.4 ~-0.6
effect give @s slowness 1 3 true