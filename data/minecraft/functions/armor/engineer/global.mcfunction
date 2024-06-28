execute if entity @s[x_rotation=-90..-30] if score @s jump matches 1.. run playsound minecraft:block.piston.extend player @a[distance=..20] ~ ~ ~ 1 2 
execute if entity @s[x_rotation=-90..-30] run effect give @s jump_boost 1 1 true

scoreboard players set detected varTime 0
scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=wolf,tag=turret] if score @s ID.Owner = buf ID.Owner run scoreboard players set detected varTime 1
execute if score @s PKM_1 matches 1 if score detected varTime matches 0 if score @s armor_cooldown matches 0 if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.armor_active run function armor/engineer/turret/set
execute if score @s PKM_1 matches 1 if score detected varTime matches 1 if data entity @s SelectedItem.tag.armor_active at @e[type=wolf,tag=turret] if score @s ID.Player = @e[tag=turret_up,distance=..5,limit=1,sort=nearest] ID.Owner run function armor/engineer/turret/remove

execute if data entity @s SelectedItem.tag.armor_active run function armor/cd
execute if score detected varTime matches 0 run scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1