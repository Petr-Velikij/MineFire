playsound minecraft:block.beacon.deactivate player @a[distance=..30] ~ ~ ~ 2 1.5
execute if score @s damage_taken matches 20.. run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..30] ~ ~ ~ 2 0.8
execute if score @s damage_taken matches 20.. rotated ~ 0 positioned ~ ~2 ~ run particle minecraft:end_rod ^-0.5 ^ ^-0.5 0 0 0 0.2 30 force @a[distance=..250]
scoreboard players operation @s module_cooldown = @s damage_taken
scoreboard players operation @s module_cooldown *= *5 CONST
execute if score @s module_cooldown matches ..100 run scoreboard players set @s module_cooldown 100
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload

scoreboard players operation *1 varTime = @s damage_taken
scoreboard players operation *1 varTime *= *6 CONST
scoreboard players operation *1 varTime /= *90 CONST

scoreboard players operation *2 varTime = @s module_cooldown
scoreboard players operation *2 varTime /= *20 CONST
tellraw @s [{"text":"Щит поглотил "},{"score":{"name":"*1","objective":"varTime"}},{"text":" урона и перезаряжается "},{"score":{"name":"*2","objective":"varTime"}},{"text":" сек."}]