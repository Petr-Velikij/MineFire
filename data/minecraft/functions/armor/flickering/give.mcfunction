execute if score @s invisibility matches 0 run function armor/save
scoreboard players operation @s invisibility += @s damage_taken
function module/invisibility/set
tag @s add custom_invisibility
playsound minecraft:entity.enderman.teleport player @s ~ ~1.6 ~ 1 1