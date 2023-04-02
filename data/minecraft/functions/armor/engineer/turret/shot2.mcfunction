data merge entity @s {damage:0.34d,crit:0b,PierceLevel:0b,Tags:["bullet","particle_crit"]}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 120
scoreboard players set @s DamageLegs 100
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00075 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00075 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00075 run scoreboard players get *Z varTime

setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"text":"турелью "},{"selector":"@p[tag=owner]"}]'} replace
data modify entity @s CustomName set from block 0 -63 0 Text1
tag @a remove Owner