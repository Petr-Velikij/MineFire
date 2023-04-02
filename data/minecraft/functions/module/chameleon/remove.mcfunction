scoreboard players set @s camouflage 0
effect clear @s invisibility
function armor/load
execute if score @s module_cooldown matches 0 run scoreboard players set @s module_cooldown 800
playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~1 ~ 1 0