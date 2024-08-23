playsound custom.gun.neutron.shot_2d player @s ~ ~1.6 ~ 3 1
playsound custom.gun.neutron.shot_1d player @a[distance=1..75] ~ ~1.6 ~ 4.8 1

stopsound @s player custom.gun.neutron.overclocking_2d

scoreboard players set aiming Random 3
scoreboard players set from_hip Random 20
scoreboard players set running Random 90
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf Power = @s Power
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/neutron/shot2

scoreboard players set @s Supply 7
function minecraft:gun/shot
scoreboard players set @s Power 100

tp @s[tag=!NoKickback] ~ ~ ~ ~ ~-0.3