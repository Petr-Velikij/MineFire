setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"text":"взрывом "},{"text":"[БК]","color":"yellow"}]'} replace
tag @a remove Owner

scoreboard players set OptDist varTime 20
scoreboard players set MaxDist varTime 50
scoreboard players set Damage varTime 140
scoreboard players set NameExplosion varTime 1
function gun/explosion/start

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 6.5 0.8

scoreboard players remove @s ammo_point 720
execute if score @s ammo_point matches ..0 run scoreboard players set @s ammo_point 0