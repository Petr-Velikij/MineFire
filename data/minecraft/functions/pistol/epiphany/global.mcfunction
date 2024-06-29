execute if score @s PKM_2 matches 1.. run function pistol/epiphany/shot

execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..}] run function gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..},nbt={OnGround:1b}] run function gun/model_pritsel

execute if score @s Supply_pistol matches 1.. run function pistol/epiphany/supply

execute unless score @s reload_pistol matches 0 run function pistol/epiphany/reload_time