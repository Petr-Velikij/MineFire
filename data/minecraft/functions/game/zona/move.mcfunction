function minecraft:random/number
execute if score Number Random matches 40.. run function minecraft:game/zona/random

execute at @s rotated ~ 0 run tp @s ^ ^ ^0.08
execute at @s run worldborder center ~ ~