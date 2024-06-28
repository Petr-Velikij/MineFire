scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner
setblock 0 -63 0 air
setblock 0 -63 0 oak_sign{Color:"-1",Text1:'[{"selector":"@p[tag=Owner]"},{"text":" используя "},{"text":"[","color":"yellow"},{"translate":"gun[54].name","color":"yellow"},{"text":"] ","color":"yellow"}]'} replace
tag @a remove Owner

scoreboard players set OptDist varTime 50
scoreboard players set MaxDist varTime 70
scoreboard players set Damage varTime 60
function gun/arrow/gun/obsidian/up_damage
execute if entity @s[tag=up] run function module/energy/up_damage_exp
scoreboard players set NameExplosion varTime 1
execute if entity @s[tag=exp_up] run function armor/grenadier/up
function gun/explosion/start
execute if score @s Power matches 175 as @a[distance=..5,gamemode=!spectator] run function module/energy/give_stun

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
particle minecraft:dust_color_transition 0.7 0 0.7 2 0.5 0 0.5 ~ ~ ~ 1 1 1 0 100 force @a[distance=..125]
playsound minecraft:custom.module.energy.stun_1d player @a[distance=..100] ~ ~ ~ 6.5 0.8
kill @s