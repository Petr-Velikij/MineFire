data merge entity @s {NoGravity:1b,damage:6.0d,crit:0b,PierceLevel:3b,Tags:["starfall"]}
execute if score buf ID.armor matches 7 run tag @s add up
scoreboard players operation @s ID.Owner = buf ID.Owner

execute store result entity @s Motion[0] double 0.0002 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get *Z varTime

scoreboard players operation @s varTimeEntity1 = *XR varTime
scoreboard players operation @s varTimeEntity2 = *YR varTime

execute if score buf ID.module matches 5 run function module/overclocking/up_speed