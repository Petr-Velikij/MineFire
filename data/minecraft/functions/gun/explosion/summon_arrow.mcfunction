execute positioned as @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=metka,sort=nearest,limit=1,distance=..20] feet
function minecraft:vector/get_vec
summon minecraft:arrow ~ ~ ~
scoreboard players operation *Damage varTime = @s ex_damage
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/explosion/motion
kill @s