scoreboard players set coefficient Random 0
playsound block.fire.extinguish player @a[distance=..20] ~ ~ ~ 1 0.7
stopsound @a[distance=..30] player minecraft:item.crossbow.shoot

scoreboard players set *YR.correct varTime 0
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf ID.target = @s ID.target
scoreboard players set *1 varTime 0
execute if score @s ID.armor matches 7 run scoreboard players set *1 varTime 1
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/locusts/shot2

function minecraft:gun/shot