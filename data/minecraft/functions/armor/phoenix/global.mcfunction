execute if score @s PKM_1 matches 1 if score @s armor_cooldown matches ..400 if data entity @s SelectedItem.tag.armor_active run function armor/phoenix/cast
execute if data entity @s SelectedItem.tag.armor_active run function armor/phoenix/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1

execute if score @s armor_cooldown2 matches 0 if score @s deathCount matches 1 run function armor/phoenix/revive
execute if score @s armor_cooldown2 matches 1 run tellraw @s [{"text":"Вы сногва готвы всотать из пепла","color":"#FF7700"}]
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1

execute if score @s armor_cooldown3 matches 399 run effect give @s absorption 10 1 true
execute if score @s armor_cooldown3 matches 1 run attribute @s generic.max_health modifier remove 57bf3738-52d8-452d-8ceb-99973f78148c
scoreboard players remove @s[scores={armor_cooldown3=1..}] armor_cooldown3 1