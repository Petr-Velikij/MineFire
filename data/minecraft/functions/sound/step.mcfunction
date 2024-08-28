execute if block ~ ~-0.4 ~ #dirt run playsound block.grass.step player @a[distance=..20] ~ ~ ~ 1 1
execute if block ~ ~ ~ #replaceable_plants run playsound block.grass.step player @a[distance=..30] ~ ~ ~ 2 0
execute if block ~ ~1 ~ #replaceable_plants run playsound block.grass.step player @a[distance=..30] ~ ~ ~ 2 0
execute if block ~ ~-0.4 ~ #leaves run playsound block.cherry_leaves.step player @a[distance=..20] ~ ~ ~ 1 1
execute if block ~ ~-0.4 ~ #mineable/axe run playsound block.wood.step player @a[distance=..20] ~ ~ ~ 1 1
execute if block ~ ~-0.4 ~ #mineable/pickaxe run playsound block.stone.step player @a[distance=..20] ~ ~ ~ 1 1
scoreboard players remove @s MoveSound 150