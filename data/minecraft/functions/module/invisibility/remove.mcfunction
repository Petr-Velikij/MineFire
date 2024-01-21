scoreboard players set @s invisibility 0
effect clear @s invisibility
function armor/load
execute if score @s module_cooldown matches 0 run scoreboard players set @s module_cooldown 1200
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload
playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~1 ~ 1 0