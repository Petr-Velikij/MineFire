function armor/hunter/scout/target_search
execute if entity @a[tag=target] if entity @a[tag=Owner,distance=..170] run function armor/hunter/scout/target_run
execute unless entity @a[tag=target] run function armor/hunter/scout/owner_run
execute if entity @a[tag=Owner,distance=170..] run function armor/hunter/scout/owner_run

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
execute if score @s Loop matches 1000 run scoreboard players set @s Loop 0