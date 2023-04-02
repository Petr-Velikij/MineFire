playsound minecraft:custom.gun.shtil.shot_2d player @s ~ ~ ~ 1 0.7
playsound minecraft:custom.gun.shtil.shot_1d player @a[distance=0.1..75] ~ ~ ~ 4.7 0.7
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot

scoreboard players set aiming Random 5
scoreboard players set from_hip Random 25
scoreboard players set running Random 60
function gun/scatter_modifier

scoreboard players set *YR.correct varTime 0
execute if score @s sneak_time matches 1.. run scoreboard players set *YR.correct varTime 1400
function minecraft:vector/get_vec

scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/anfisa/shot2

function minecraft:gun/shot
execute if score *InHolder varTime matches 0 if entity @s[tag=!hit] unless score @s modeFire matches 3 run function gun/anfisa/ii/hit_no
execute if score *InHolder varTime matches 0 if entity @s[tag=hit] if score @s modeFire matches 2 unless score @s ammo_point matches 0 run function gun/anfisa/ii/reload
execute if score *InHolder varTime matches 0 if score @s modeFire matches 3 unless score @s ammo_point matches 0 run function gun/anfisa/ii/reload

execute if score @s modeFire matches 3 run tp @s ~ ~ ~ ~-2 ~-7