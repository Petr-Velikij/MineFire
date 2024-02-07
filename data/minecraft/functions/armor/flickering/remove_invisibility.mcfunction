scoreboard players set @s invisibility 0
effect clear @s invisibility
function armor/load
tag @s remove custom_invisibility
playsound minecraft:entity.enderman.teleport player @s ~ ~1.6 ~ 1 0