scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @e[type=armor_stand,distance=..1] if score @s ID.Owner = buf ID.Owner run tag @s add ThisTurret
execute as @e[type=wolf,distance=..50,tag=turret] if score @s ID.Owner = buf ID.Owner run tag @s add ThisTurret
tp @e[type=armor_stand,tag=ThisTurret,distance=..1] @e[limit=1,type=wolf,tag=ThisTurret,distance=..50]

execute at @s run function armor/engineer/turret/global