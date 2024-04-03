scoreboard players set aiming Random 7
scoreboard players set from_hip Random 25
scoreboard players set running Random 60

playsound custom.gun.sokol.shot_2d player @s ~ ~1.6 ~ 0.8 2
playsound custom.gun.sokol.shot_1d player @a[distance=1..75] ~ ~1.6 ~ 5.2 2

function gun/scatter_modifier
#25 блоков
scoreboard players set *YR.correct varTime 750
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function pistol/executioner/shot2

scoreboard players set @s Supply_pistol 18
function pistol/shot

scoreboard players add @s Scatter 100

tp @s ~ ~ ~ ~3 ~-10