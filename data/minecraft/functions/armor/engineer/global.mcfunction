execute if entity @s[x_rotation=-90..-75] if score @s jump matches 1.. run playsound minecraft:block.piston.extend player @a[distance=..20] ~ ~ ~ 1 2 
execute if entity @s[x_rotation=-90..-75] run effect give @s jump_boost 1 1 true
execute if score @s PKM_1 matches 1 if score @s armor_cooldown matches 0 if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.armor_active unless entity @e[tag=turret,distance=..2] align xyz positioned ~0.5 ~ ~0.5 run function armor/engineer/turret/set
execute if score @s PKM_1 matches 1 unless score @s armor_cooldown matches 0 if data entity @s[nbt={OnGround:1b}] SelectedItem.tag.armor_active if entity @e[tag=turret,distance=..1] if score @s ID.Player = @e[tag=turret_up,distance=..1,limit=1,sort=nearest] ID.Owner run function armor/engineer/turret/remove
execute if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1