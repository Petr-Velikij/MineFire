scoreboard players set hp varTime 20
execute if score @s ID.armor matches 9 if score @s armor_cooldown3 matches 1.. run scoreboard players set hp varTime 4
scoreboard players operation hp varTime -= @s health

execute if score @s food matches 20 if score @s health_cooldown matches 0 unless data entity @s ActiveEffects[{Id:10}] run effect give @s regeneration 3 2 true
execute if score @s food matches 20 if score hp varTime matches 2.. if score @s health_cooldown matches 0 run effect give @s hunger 1 69 true

execute if score @s food matches 10..19 if score @s health_cooldown matches 0 unless data entity @s ActiveEffects[{Id:10}] run effect give @s regeneration 2 1 true
execute if score @s food matches 10..19 if score hp varTime matches 2.. if score @s health_cooldown matches 0 run effect give @s hunger 1 9 true

execute if score @s damage_taken matches 1.. run function health/damage
execute if score @s health_cooldown matches 1.. run scoreboard players remove @s health_cooldown 1