playsound custom.gun.armature.shot_2d player @s ~ ~1.6 ~ 3 1
playsound custom.gun.armature.shot_1d player @a[distance=1..75] ~ ~1.6 ~ 4.8 1


scoreboard players set aiming Random 7
scoreboard players set from_hip Random 40
scoreboard players set running Random 130
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 1350
function minecraft:vector/get_vec
scoreboard players operation *1 varTime = @s Power
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/armature/shot2

scoreboard players set @s Supply 3
function minecraft:gun/shot
scoreboard players operation *1 varTime = @s Power
scoreboard players operation *1 varTime *= *20 CONST
scoreboard players operation *1 varTime /= *100 CONST
scoreboard players operation @s Power -= *1 varTime

tp @s ~ ~ ~ ~ ~-5