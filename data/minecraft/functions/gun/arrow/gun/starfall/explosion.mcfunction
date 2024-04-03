scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"selector":"@p[tag=Owner]"},{"text":" используя "},{"text":"[","color":"yellow"},{"translate":"gun[44].name","color":"yellow"},{"text":"] ","color":"yellow"}]'} replace

scoreboard players set OptDist varTime 35
scoreboard players set MaxDist varTime 70
scoreboard players set Damage varTime 120
scoreboard players set NameExplosion varTime 1
execute if entity @s[tag=up] run function armor/grenadier/up
function gun/explosion/start

execute if score @s ArrowLive matches 40.. as @e[type=#target,distance=..10] run damage @s 10 explosion by @p[tag=Owner]
tag @a remove Owner

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
playsound entity.generic.explode player @a[distance=..170] ~ ~ ~ 6.5 0.3

kill @s