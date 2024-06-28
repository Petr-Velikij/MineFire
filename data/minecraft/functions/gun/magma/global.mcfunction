execute if score @s Time_PKM_2 matches 5 unless score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.end_2d player @s ~ ~ ~ 1 1
execute if score @s Time_PKM_2 matches 5 unless score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.end_1d player @a[distance=0.1..10] ~ ~1.6 ~ 1 1
execute if score @s Time_PKM_2 matches 4 if score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.end_2d player @s ~ ~ ~ 1 1.1
execute if score @s Time_PKM_2 matches 4 if score @s ID.module matches 1 run playsound minecraft:custom.gun.magma.end_1d player @a[distance=0.1..10] ~ ~1.6 ~ 1 1.1

execute if score @s Time_PKM_2 matches ..4 if score @s Supply matches 3 run function minecraft:gun/magma/shot3
execute if score @s PKM_2 matches 1.. run function minecraft:gun/magma/shot
execute if score @s reload matches 0 run function minecraft:gun/magma/print
execute unless score @s Supply matches 0 run scoreboard players remove @s Supply 1

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 run function minecraft:gun/magma/reload_time