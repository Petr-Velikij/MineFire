execute store result score @s ID.module run data get entity @s Inventory[{}].tag.moduleID
execute if score @s module_cooldown matches 1 run function module/ready
execute if score @s module_cooldown matches 1.. run scoreboard players remove @s module_cooldown 1

execute if score @s ID.module matches 1 run function module/energy/global
execute if score @s ID.module matches 3 run function module/invisibility/global
execute if score @s ID.module matches 4 run function module/shield/global
execute if score @s ID.module matches 8 if data entity @s SelectedItem.tag.moduleID unless score @s module_cooldown matches 0 run function module/print