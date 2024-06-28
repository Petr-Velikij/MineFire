scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"text":"взрывом дрона "},{"selector":"@p[tag=Owner]"}]'} replace
tag @a remove Owner

scoreboard players set OptDist varTime 10
scoreboard players set MaxDist varTime 40
scoreboard players set Damage varTime 250
scoreboard players set NameExplosion varTime 1
function gun/explosion/start

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 6.5 0.8

data merge entity @e[type=wolf,tag=turret,distance=..1,limit=1] {Owner:[I;0,0,0,0]}
kill @e[tag=turret,distance=..1]