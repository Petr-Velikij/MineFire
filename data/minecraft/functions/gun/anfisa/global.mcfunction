function gun/anfisa/ii/global

execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1

execute if score @s PKM_2 matches 1.. run function minecraft:gun/anfisa/shot
execute if entity @s[tag=!no_scope] unless entity @s[scores={sneak_time=1..,sprint_one_cm=0..1}] run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if entity @s[scores={sneak_time=1..,sprint_one_cm=0..1},nbt={OnGround:1b}] run function minecraft:gun/model_pritsel

execute unless score @s reload matches 0 if score @s Supply matches 0 run function minecraft:gun/anfisa/reload_time

execute if score @s sneak_time matches 1 if score @s modeFire matches 1 if score @s reload matches 0 run function gun/anfisa/ii/distans/start