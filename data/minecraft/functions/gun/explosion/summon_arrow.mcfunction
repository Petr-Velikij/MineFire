execute at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=metka_player,limit=1,sort=nearest] feet
function minecraft:vector/get_vec
execute at @s run summon minecraft:arrow ~ ~ ~
scoreboard players operation *Damage varTime = @e[type=marker,tag=metka_player,limit=1,sort=nearest] ex_damage
execute as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/explosion/motion
kill @e[type=marker,tag=metka_player,limit=1,sort=nearest]