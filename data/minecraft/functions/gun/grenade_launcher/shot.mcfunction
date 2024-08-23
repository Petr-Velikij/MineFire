playsound custom.gun.grenade.shot_1d player @a[distance=..30] ~ ~ ~ 3.7 0.8


scoreboard players set aiming Random 20
scoreboard players set from_hip Random 30
scoreboard players set running Random 80
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 4000
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players set *1 varTime 0
execute if score @s ID.armor matches 7 run scoreboard players set *1 varTime 1
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/grenade_launcher/shot2

scoreboard players set @s Supply 15
function minecraft:gun/shot

tp @s[tag=!NoKickback] ~ ~ ~ ~2 ~-7