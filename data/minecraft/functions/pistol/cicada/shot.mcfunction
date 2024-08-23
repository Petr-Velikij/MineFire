scoreboard players set aiming Random 20
scoreboard players set from_hip Random 30
scoreboard players set running Random 80

playsound minecraft:custom.gun.ripper.shot_2d player @s ~ ~ ~ 1 1.2
playsound minecraft:custom.gun.ripper.shot_1d player @a[distance=0.1..75] ~ ~ ~ 4.7 1.2

function gun/scatter_modifier
#25 блоков
scoreboard players set *YR.correct varTime 790
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function pistol/cicada/shot2

execute if score @s Supply_pistol matches 0 run scoreboard players set @s Supply_pistol 4
function pistol/shot
scoreboard players add @s Scatter 25

tp @s[tag=!NoKickback] ~ ~ ~ ~ ~-1.5