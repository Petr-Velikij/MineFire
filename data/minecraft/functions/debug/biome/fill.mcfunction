execute if entity @s[tag=SetForest] run fillbiome ~7 60 ~7 ~-7 125 ~-7 forest
execute if entity @s[tag=SetPlains] run fillbiome ~7 60 ~7 ~-7 125 ~-7 plains
particle dust 0 1 0 1 ~7 80 ~7 0 5 0 0 10 force @a[distance=..250]
particle dust 0 1 0 1 ~-7 80 ~7 0 5 0 0 10 force @a[distance=..250]
particle dust 0 1 0 1 ~7 80 ~-7 0 5 0 0 10 force @a[distance=..250]
particle dust 0 1 0 1 ~-7 80 ~-7 0 5 0 0 10 force @a[distance=..250]

particle dust 0 1 0 1 ~7 80 ~ 0 0 1.5 0 10 force @a[distance=..250]
particle dust 0 1 0 1 ~-7 80 ~ 0 0 1.5 0 10 force @a[distance=..250]
particle dust 0 1 0 1 ~ 80 ~7 1.5 0 0 0 10 force @a[distance=..250]
particle dust 0 1 0 1 ~ 80 ~-7 1.5 0 0 0 10 force @a[distance=..250]