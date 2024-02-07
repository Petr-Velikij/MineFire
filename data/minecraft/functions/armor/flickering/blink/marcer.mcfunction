particle dust 0 1 0 1 ~ ~1 ~ 0 0.3 0 0 3 force @s
execute if score @s PKM_1 matches 1 run function armor/flickering/blink/teleport_to
scoreboard players set End varTime 1