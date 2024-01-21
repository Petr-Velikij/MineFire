playsound custom.gun.timetick.shot_1d player @a[distance=..75] ~ ~ ~ 4.7 1
playsound custom.gun.timetick.shot_1d player @a[distance=..75] ~ ~ ~ 4.7 1


scoreboard players set aiming Random 3
scoreboard players set from_hip Random 30
scoreboard players set running Random 100
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 1050
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation *1 varTime = @s Power
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/darkness/shot2

scoreboard players set @s Supply 7
function minecraft:gun/shot

tp @s ~ ~ ~ ~0.3 ~-2.7