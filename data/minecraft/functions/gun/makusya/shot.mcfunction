scoreboard players set coefficient Random 0
playsound block.fire.extinguish player @a[distance=..20] ~ ~ ~ 1 0.7
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/makusya/shot2

scoreboard players set @s Power 300

function minecraft:gun/shot