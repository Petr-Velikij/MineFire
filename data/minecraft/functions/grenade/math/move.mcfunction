scoreboard players operation buf ID.grenade = @s ID.grenade
execute as @e[type=item,tag=item_grenade,distance=..20] if score @s ID.grenade = buf ID.grenade run tag @s add MyItem

execute if entity @s[nbt={inGround:0b}] run function grenade/math/item
execute if score @s rebound.count matches 5.. run tp @e[type=item,tag=MyItem,distance=..20,limit=1] ~ ~ ~
execute if entity @s[nbt={inGround:1b}] if score @s rebound.count matches ..5 run function grenade/math/rebound
execute store result score @s varTimeEntity1 run data get entity @s Motion[0] 10000
execute store result score @s varTimeEntity2 run data get entity @s Motion[1] 10000
execute store result score @s varTimeEntity3 run data get entity @s Motion[2] 10000
tag @e[type=item,tag=MyItem,distance=..20] remove MyItem