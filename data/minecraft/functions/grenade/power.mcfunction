title @s times 0 4 0
title @s title ""
execute if score @s MotionGrenade matches 100.. run title @s subtitle [{"score":{"name":"@s","objective":"MotionGrenade"}},{"text":"%"}]
execute if score @s MotionGrenade matches 10..99 run title @s subtitle [{"score":{"name":"@s","objective":"MotionGrenade"}},{"text":"%"}]
execute if score @s MotionGrenade matches ..9 run title @s subtitle [{"score":{"name":"@s","objective":"MotionGrenade"}},{"text":"%"}]

execute if score @s ID.armor matches 7 if score @s MotionGrenade matches 100..129 run scoreboard players add @s MotionGrenade 3
execute if score @s MotionGrenade matches ..99 run scoreboard players add @s MotionGrenade 3

execute unless data entity @s SelectedItem.tag.grenade run scoreboard players set @s MotionGrenade 0