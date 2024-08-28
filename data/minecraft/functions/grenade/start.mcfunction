scoreboard players set IdGrenade varTime 0
execute if score @s PKM_1 matches 1 if score @s MotionGrenade matches 10.. store result score IdGrenade varTime run data get entity @s SelectedItem.tag.grenade
execute if score @s PKM_1 matches 1 if score @s MotionGrenade matches 0 if data entity @s SelectedItem.tag.grenade run scoreboard players set @s MotionGrenade 10

execute if score @s MotionGrenade matches 10.. run function grenade/power

execute if score IdGrenade varTime matches 1.. run function grenade/cast
execute if score IdGrenade varTime matches 1 positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function grenade/fragmentation/cast
execute if score IdGrenade varTime matches 1.. run scoreboard players set @s MotionGrenade 0