playsound custom.gun.railgun.shot_2d player @s ~ ~ ~ 2 1
playsound custom.gun.railgun.shot_2d player @s ~ ~ ~ 2 1
playsound custom.gun.railgun.shot_2d player @s ~ ~ ~ 2 1
playsound custom.gun.railgun.shot_1d player @a[distance=0.1..170] ~ ~1 ~ 3.6 1
playsound custom.gun.railgun.shot_1d player @a[distance=0.1..170] ~ ~1 ~ 7.1 1
playsound custom.gun.railgun.shot_1d player @a[distance=0.1..170] ~ ~1 ~ 10.8 1


scoreboard players set aiming Random 3
scoreboard players set from_hip Random 40
scoreboard players set running Random 380
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 1900
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/railgun/shot2

scoreboard players set @s Supply 70
function minecraft:gun/shot

tp @s[tag=!NoKickback] ~ ~ ~ ~-10 ~-35