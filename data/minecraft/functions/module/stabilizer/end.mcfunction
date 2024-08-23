scoreboard players set @s module_effect 0
scoreboard players set @s PKM_1 0
scoreboard players set @s module_cooldown 600
tag @s remove NoKickback
playsound minecraft:block.piston.extend player @s ~ ~ ~ 1 0.9
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload