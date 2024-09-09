scoreboard players set @s armor_cooldown 0

execute unless data entity @s SelectedItem.tag.gun run function armor/flickering/bait/summon

execute if score @s invisibility matches 0 run function armor/save
scoreboard players operation @s invisibility += @s damage_taken
execute if score @s invisibility matches ..50 run scoreboard players set @s invisibility 50
function module/invisibility/set
tag @s add custom_invisibility

playsound minecraft:entity.enderman.teleport player @s ~ ~1.6 ~ 1 1
effect give @s speed 2 1 true