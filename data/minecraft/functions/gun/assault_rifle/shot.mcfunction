scoreboard players set aiming Random 7
scoreboard players set from_hip Random 20
scoreboard players set running Random 60

playsound custom.gun.assault_rifle.shot_2d player @s ~ ~ ~ 1 1
playsound custom.gun.assault_rifle.shot_1d player @a[distance=1..75] ~ ~ ~ 4.7 1
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot

function gun/scatter_modifier
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/assault_rifle/shot2

function minecraft:gun/shot
scoreboard players add @s Scatter 40

tp @s ~ ~ ~ ~ ~-1.7