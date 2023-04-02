execute if score @s Supply matches 1 run function minecraft:gun/ripper/shot3
execute if score @s Supply matches 2 run function minecraft:gun/ripper/shot3
execute if score @s Supply matches 3 run function minecraft:gun/ripper/shot3
execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1

execute if score @s PKM_2 matches 1.. run function minecraft:gun/ripper/shot
execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..}] run function minecraft:gun/model_pritsel

execute if score @s[tag=!camouflage_gun] ID.armor matches 1 run function minecraft:gun/ripper/camouflage_gun

execute unless score @s reload matches 0 run function minecraft:gun/ripper/reload_time