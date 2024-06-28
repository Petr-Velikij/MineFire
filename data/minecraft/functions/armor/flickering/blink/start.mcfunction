scoreboard players operation Loop varTime = @s stamina
scoreboard players operation Loop varTime /= *10 CONST

execute if entity @s[tag=custom_invisibility] run scoreboard players set Loop varTime 100

scoreboard players set End varTime 0
scoreboard players set Teleport varTime 0
scoreboard players set i varTime 0
execute positioned ~ ~1.62 ~ run function armor/flickering/blink/loop
execute if score @s PKM_1 matches 1 if score End varTime matches 1 run function armor/flickering/blink/trace