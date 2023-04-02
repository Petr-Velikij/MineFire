scoreboard players set coefficient Random 60
playsound entity.iron_golem.hurt player @a[distance=1..40] ~ ~ ~ 2.5 2
scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
summon arrow ~ ~0.5 ~
scoreboard players operation buf ID.Owner = @s ID.Owner
execute positioned ~ ~0.5 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function armor/engineer/turret/shot2
scoreboard players set @s Supply 5