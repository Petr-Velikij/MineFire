scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=phantom,tag=scout] if score @s ID.Owner = buf ID.Owner run tag @s add myScout

scoreboard players set *1 varTime 0
execute if entity @e[type=phantom,tag=myScout] run scoreboard players set *1 varTime 1
execute if score *1 varTime matches 0 positioned ~ ~2 ~ if score @s armor_cooldown matches 0 run function armor/hunter/scout/spawn
execute if score *1 varTime matches 1 run kill @e[type=phantom,tag=myScout]