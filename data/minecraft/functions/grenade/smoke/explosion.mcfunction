scoreboard players operation buf ID.grenade = @s ID.grenade
execute as @e[type=item,tag=item_grenade,distance=..20] if score @s ID.grenade = buf ID.grenade run tag @s add MyItem
kill @e[type=item,tag=MyItem,distance=..20]

kill @s