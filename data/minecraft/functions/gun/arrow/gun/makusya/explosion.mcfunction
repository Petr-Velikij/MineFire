scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"selector":"@p[tag=Owner]"},{"text":" используя "},{"text":"[Макуся]","color":"yellow"}]'} replace
scoreboard players set @p[tag=Owner] Power 100
tag @a remove Owner

scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @e[type=marker,tag=makusya_point] if score @s ID.target = buf ID.Owner run tag @s add Marker
kill @e[type=marker,tag=Marker]

scoreboard players set OptDist varTime 30
scoreboard players set MaxDist varTime 60
scoreboard players set Damage varTime 120
scoreboard players set NameExplosion varTime 1
execute if entity @s[tag=up] run function armor/grenadier/up
function gun/explosion/start

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 6.5 0.8

kill @s