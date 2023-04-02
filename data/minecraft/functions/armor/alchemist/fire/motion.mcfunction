data merge entity @s {damage:1d,crit:0b,PierceLevel:5b,Tags:["flame"],SoundEvent:"minecraft:entity.blaze.burn",inGround:0b}
execute store result entity @s Motion[0] double 0.00002 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00002 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00002 run scoreboard players get *Z varTime