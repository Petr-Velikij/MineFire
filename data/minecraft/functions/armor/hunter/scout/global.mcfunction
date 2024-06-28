function armor/hunter/scout/target_search
execute if score @s Loop matches ..200 run function armor/hunter/scout/owner_run
execute if score @s Loop matches 1200..1500 run function armor/hunter/scout/owner_run
execute if score @s Loop matches 1500..1800 run function armor/hunter/scout/owner_return
execute if score @s Loop matches 1500.. if entity @p[tag=Owner,distance=..2] run kill @s
execute if score @s Loop matches 1800 run kill @s

execute if entity @p[tag=target] if entity @p[tag=Owner,distance=..170] if score @s Loop matches 200..1200 run function armor/hunter/scout/target_run
execute unless entity @p[tag=target] run function armor/hunter/scout/owner_run
execute if entity @p[tag=Owner,distance=170..] run function armor/hunter/scout/owner_run

scoreboard players operation *2 varTime = @s Loop
scoreboard players operation *2 varTime %= *270 CONST
execute if score *2 varTime matches 0 run playsound minecraft:entity.phantom.ambient player @a[distance=..40] ~ ~ ~ 2 0
scoreboard players operation *2 varTime = @s Loop
scoreboard players operation *2 varTime %= *100 CONST
execute if score *2 varTime matches 0 run playsound minecraft:entity.phantom.flap player @a[distance=..40] ~ ~ ~ 2.2 1

tag @a remove target
tag @a remove Owner
tag @a remove Team

scoreboard players add @s Loop 1