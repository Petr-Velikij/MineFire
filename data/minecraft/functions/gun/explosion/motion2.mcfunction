execute store result entity @s damage double 0.01 run scoreboard players get Damage varTime
scoreboard players operation @s ID.Owner = buf ID.Owner
execute if score NameExplosion varTime matches 1 run data modify entity @s CustomName set from block 0 -63 0 Text1