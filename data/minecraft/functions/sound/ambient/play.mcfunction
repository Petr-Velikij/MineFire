execute if biome ~ ~ ~ #is_forest run playsound custom.ambient.forest ambient @p[tag=PlayerSound] ~ ~7 ~ 10 1
execute if biome ~ ~ ~ plains run playsound custom.ambient.plains ambient @p[tag=PlayerSound] ~ ~1 ~ 10 1
#particle dust 0 1 0 5 ~ ~10 ~ 0 5 0 0 100 force @a[distance=..250]
kill @s