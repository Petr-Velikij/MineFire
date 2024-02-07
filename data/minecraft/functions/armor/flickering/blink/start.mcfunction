scoreboard players operation Loop varTime = @s stamina
scoreboard players operation Loop varTime /= *10 CONST

scoreboard players set End varTime 0
scoreboard players set Teleport varTime 0
scoreboard players set i varTime 0
execute positioned ~ ~1.62 ~ run function armor/flickering/blink/loop