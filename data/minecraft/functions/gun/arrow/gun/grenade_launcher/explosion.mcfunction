scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"selector":"@p[tag=Owner]"},{"text":" используя "},{"text":"[","color":"yellow"},{"translate":"gun[41].name","color":"yellow"},{"text":"] ","color":"yellow"}]'} replace
tag @a remove Owner

scoreboard players set OptDist varTime 20
scoreboard players set MaxDist varTime 40
scoreboard players set Damage varTime 80
scoreboard players set NameExplosion varTime 1
execute if entity @s[tag=up] run function armor/grenadier/up
function gun/explosion/start

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 6.5 0.8

kill @s