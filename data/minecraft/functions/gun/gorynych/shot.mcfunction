scoreboard players set aiming Random 50
scoreboard players set from_hip Random 50
scoreboard players set running Random 50

playsound block.fire.extinguish player @a[distance=..25] ~ ~ ~ 4.7 1

function gun/scatter_modifier
scoreboard players set *YR.correct varTime 5000
function minecraft:vector/get_vec
scoreboard players operation buf ID.Owner = @s ID.Player
execute at @s positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/gorynych/shot2

execute if score @s Supply matches 0 run function minecraft:gun/shot
execute if score @s Supply matches 0 run scoreboard players set @s Supply 3