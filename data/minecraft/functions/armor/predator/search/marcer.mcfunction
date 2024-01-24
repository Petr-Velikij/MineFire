tp @s ~ ~ ~ ~ ~
#scoreboard players set *1 varTime 160
scoreboard players operation *1 varTime = distance varTime
function armor/predator/search/size
tag @s add detected_enemy
tag @s remove old