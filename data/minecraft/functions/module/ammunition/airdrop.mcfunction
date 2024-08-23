particle dust 1 0 0 5 ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[distance=..250]
scoreboard players operation *1 varTime = Loop1k20 CONST
scoreboard players operation *1 varTime %= *20 CONST

execute if score *1 varTime matches 12 run playsound entity.experience_orb.pickup player @a[distance=..35] ~ ~1 ~ 1.9 1.2