scoreboard players set @s invisibility 0
effect clear @s invisibility
function armor/load
playsound minecraft:entity.enderman.teleport player @s ~ ~1 ~ 1 0
tag @s remove custom_invisibility
tag @s remove bad_custom_invisibility