playsound custom.gun.leaves.shot_1d player @a[distance=..90] ^ ^ ^1 3.7 1
playsound custom.gun.leaves.shot_1d player @a[distance=..90] ^ ^ ^1 3.7 1


scoreboard players set aiming Random 1
scoreboard players set from_hip Random 30
scoreboard players set running Random 120
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 600
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/leaves/shot2

scoreboard players set @s Supply 30
function minecraft:gun/shot

tp @s ~ ~ ~ ~0.2 ~-2