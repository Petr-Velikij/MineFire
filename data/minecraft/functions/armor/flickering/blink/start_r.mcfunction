tag @s add owner
scoreboard players set Loop varTime 100
scoreboard players set End varTime 0
scoreboard players set Teleport varTime 0
scoreboard players set i varTime 0
execute positioned ~ ~1.62 ~ run function armor/flickering/blink/loop_r
tag @s remove owner