execute if score @s module_cooldown matches 1 run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 2 1.5

execute store result score AbsorptionAmount varTime run data get entity @s AbsorptionAmount 10
execute if score @s damage_absorbed matches 1.. run function module/shield/break
execute if score @s module_cooldown matches 0 run function module/shield/effect

execute if data entity @s SelectedItem.tag.moduleID run function module/print
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.moduleID if score @s module_cooldown matches 0 run function module/shield/cust

execute if score @s module_effect matches 1.. run scoreboard players remove @s module_effect 1
function module/shield/module/global