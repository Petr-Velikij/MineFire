effect clear @s glowing
scoreboard players set @s invisibility 140
function armor/save
function module/invisibility/set
playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~1 ~ 1 1
scoreboard players set @s module_cooldown 740
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload