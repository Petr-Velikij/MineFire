execute if score @s invisibility matches 0 if score @s camouflage matches 0 run function armor/hunter/change_switch

execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.armor_active run function armor/hunter/scout
execute unless score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1

execute if score @s Time_PKM_2 matches 99 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.2 1.5
execute if score @s Time_PKM_2 matches 99 run tag @s add next_up
execute if score @s[tag=next_up] PKM_2 matches 1 run function armor/hunter/up_damage

execute unless score @s Pos_delta matches ..10 unless score @s armor_cooldown2 matches 30 run scoreboard players add @s armor_cooldown2 1
execute if score @s Pos_delta matches ..10 unless score @s armor_cooldown2 matches 0 run scoreboard players remove @s armor_cooldown2 1
execute if score @s armor_cooldown2 matches 0 run effect give @s invisibility 1 0 true