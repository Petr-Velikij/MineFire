execute if score @s[x_rotation=-90..-75,nbt={OnGround:1b}] armor_cooldown matches 0 if score @s sneak_time matches 1 run function armor/hawk/prep
execute if score @s[x_rotation=-90..-75] jump matches 1 if score @s armor_cooldown matches 0 if score @s armor_cooldown2 matches 0 run function armor/hawk/jump
execute if entity @s[x_rotation=-90..-75,nbt={OnGround:1b}] if score @s sneak_time matches 0 run function armor/cd

execute if entity @s[tag=fly] run effect give @s jump_boost 1 255 true
execute if entity @s[tag=fly,nbt={OnGround:1b}] run function armor/hawk/cd

execute unless score @s armor_cooldown2 matches 100 if score @s sneak_time matches 0 run scoreboard players set @s armor_cooldown2 100
execute unless score @s armor_cooldown2 matches 100 unless entity @s[x_rotation=-90..-75] run scoreboard players set @s armor_cooldown2 100

scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1