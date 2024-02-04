data merge entity @s {NoGravity:1b,damage:2.7d,crit:0b,PierceLevel:3b,Tags:["obsidian_exp"]}
scoreboard players set *1 varTime 270
scoreboard players operation *1 varTime *= buf Power
execute store result entity @s damage double 0.0001 run scoreboard players get *1 varTime

execute if score buf ID.armor matches 7 run tag @s add exp_up
execute if score buf ID.module matches 1 run function module/energy/up_damage
scoreboard players operation @s ID.Owner = buf ID.Owner
scoreboard players operation @s Power = buf Power
execute store result entity @s Motion[0] double 0.00025 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00025 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get *Z varTime