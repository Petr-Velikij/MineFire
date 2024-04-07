execute if score @s Supply_pistol matches 3 run function pistol/cicada/shot3
execute if score @s PKM_2 matches 1.. run function pistol/cicada/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function gun/model_pritsel

execute if score @s Supply_pistol matches 1.. run scoreboard players remove @s Supply_pistol 1

execute unless score @s reload_pistol matches 0 run function pistol/cicada/reload_time