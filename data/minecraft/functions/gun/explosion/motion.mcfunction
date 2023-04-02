data merge entity @s {damage:1.0d,crit:0b,PierceLevel:1b,Tags:["shard","particle_crit"],SoundEvent:"minecraft:entity.generic.explode"}
execute store result entity @s damage double 0.01 run scoreboard players get *Damage varTime
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.001 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.001 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.001 run scoreboard players get *Z varTime

execute if score NameExplosion varTime matches 1 run data modify entity @s CustomName set from block 0 -63 0 Text1
#Для отладки
#execute store result score *1 varTime run data get entity @s damage 100
#tellraw @a [{"text": "Урон "},{"score":{"name":"*1","objective":"varTime"}},{"text": " из "},{"score":{"name":"Damage","objective":"varTime"}}]