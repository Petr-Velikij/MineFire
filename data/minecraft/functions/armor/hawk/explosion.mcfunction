tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Text1:'[{"selector":"@p[tag=Owner]"},{"text":" используя "},{"text":"[Порыв Ястреба]","color":"aqua"}]'} replace
tag @s remove Owner

scoreboard players set OptDist varTime 40
scoreboard players set MaxDist varTime 80
scoreboard players set Damage varTime 50
scoreboard players set NameExplosion varTime 1
execute positioned ~ ~1.5 ~ run function gun/explosion/start

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..175]
playsound entity.phantom.bite player @a[distance=..50] ~ ~ ~ 12 0.8
playsound entity.phantom.bite player @a[distance=50..175] ~ ~ ~ 12 0