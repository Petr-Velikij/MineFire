scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a if score @s ID.Player = buf ID.Owner run tag @s add Owner

execute if entity @s[tag=!up] as @a[distance=..5] run function module/energy/give_stun
execute if entity @s[tag=up] as @a[distance=..6.5] run function module/energy/give_stun

tag @a remove Owner

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
particle minecraft:dust_color_transition 0 1 1 2 0 0.7 0.7 ~ ~ ~ 1.5 1 1.5 0 100 force @a[distance=..125]
playsound minecraft:custom.module.energy.stun_1d player @a[distance=..20] ~ ~ ~ 6.5 1
playsound minecraft:custom.module.energy.stun_1d player @a[distance=20..100] ~ ~ ~ 6.5 0.8

scoreboard players operation buf ID.grenade = @s ID.grenade
execute as @e[type=item,tag=item_grenade,distance=..20] if score @s ID.grenade = buf ID.grenade run tag @s add MyItem
kill @e[type=item,tag=MyItem,distance=..20]

kill @s