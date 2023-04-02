data merge entity @s {NoGravity:1b,damage:6.2d,crit:0b,PierceLevel:2b,Tags:["locusts"]}
execute if score *1 varTime matches 1 run tag @s add up
scoreboard players operation @s ID.Owner = buf ID.Owner
scoreboard players operation @s ID.target = buf ID.target
scoreboard players operation @s varTimeEntity1 = *XR varTime
scoreboard players operation @s varTimeEntity2 = *YR varTime
execute store result entity @s Motion[0] double 0.00015 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00015 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00015 run scoreboard players get *Z varTime