data merge entity @s {NoGravity:1b,damage:3.58d,crit:0b,PierceLevel:0b,Tags:["obsidian_shotgun"]}

execute if score buf ID.module matches 1 run function module/energy/up_damage
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00025 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00025 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get *Z varTime