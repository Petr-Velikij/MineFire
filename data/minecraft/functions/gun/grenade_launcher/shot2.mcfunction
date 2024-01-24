data merge entity @s {NoGravity:1b,damage:3.2d,crit:0b,PierceLevel:3b,Tags:["grenade_launcher"]}
execute if score *1 varTime matches 1 run tag @s add up
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00025 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00025 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed