scoreboard players set aiming Random 3
scoreboard players set from_hip Random 30
scoreboard players set running Random 80

playsound minecraft:custom.gun.anfisa.shot_2d player @s ~ ~1.6 ~ 1 2
playsound minecraft:custom.gun.anfisa.shot_1d player @a[distance=0.1..50] ~ ~1.6 ~ 3.2 2

function gun/scatter_modifier
#75 блоков
scoreboard players set *YR.correct varTime 0
execute unless score @s sneak_time matches 0 run scoreboard players set *YR.correct varTime 2350
function minecraft:vector/get_vec
scoreboard players operation buf ID.module = @s ID.module
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function pistol/epiphany/shot2

scoreboard players set @s Supply_pistol 30
function pistol/shot

#tp @s ~ ~ ~ ~ ~-0.7