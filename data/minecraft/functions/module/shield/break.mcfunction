execute if score AbsorptionAmount varTime matches 0 run playsound minecraft:block.beacon.deactivate player @a[distance=..30] ~ ~ ~ 2 1.5
execute if score AbsorptionAmount varTime matches 0 run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..30] ~ ~ ~ 2 0.8
execute if score AbsorptionAmount varTime matches 0 rotated ~ 0 positioned ~ ~2 ~ run particle minecraft:end_rod ^-0.5 ^ ^-0.5 0 0 0 0.2 30 force @a[distance=..250]
execute if score AbsorptionAmount varTime matches 0 if score @s module_effect matches 1.. run scoreboard players set @s module_effect 2
execute if score @s module_cooldown matches ..100 run scoreboard players set @s module_cooldown 100
execute if score @s module_cooldown matches ..101 if score @s ID.armor matches 5 run function armor/engineer/fast_reload