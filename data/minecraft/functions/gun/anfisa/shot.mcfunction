playsound minecraft:custom.gun.anfisa.shot_2d player @s ~ ~ ~ 1 1
playsound minecraft:custom.gun.anfisa.shot_1d player @a[distance=0.1..75] ~ ~ ~ 4.7 0.7


scoreboard players set aiming Random 5
scoreboard players set from_hip Random 25
scoreboard players set running Random 60
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 1400
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf ID.target = @s ID.target
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/anfisa/shot2
execute if score @s modeFire matches 2 unless score @s ID.target matches 0 run function gun/anfisa/ii/shot

scoreboard players set @s Anfisa 30
scoreboard players set @s Supply 20
function minecraft:gun/shot

tp @s[tag=!NoKickback] ~ ~ ~ ~-2 ~-7