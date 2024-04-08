scoreboard players set *1 varTime 450
scoreboard players set detection varTime 0
function gun/anfisa/auto/search_loop
execute if score detection varTime matches 1 run scoreboard players operation @s ID.target = @p[tag=target] ID.Player
execute if score detection varTime matches 1 if entity @e[type=armor_stand,tag=marcer_enemy2,distance=..5] run scoreboard players set detection varTime 2
execute if score detection varTime matches 1 if entity @s[tag=!no_scope] if score @s Pos_delta matches 0..2 run function gun/anfisa/auto/spawn_marker
execute if score detection varTime matches 2 if entity @s[tag=!no_scope] if score @s Pos_delta matches 0..2 as @e[type=armor_stand,tag=marcer_enemy2,distance=..5,limit=1] positioned ~ ~-0.23 ~ facing entity @p[tag=target] feet run tp @s ^ ^ ^1 ~ ~
execute if entity @s[tag=no_scope] run kill @e[type=armor_stand,tag=marcer_enemy2,distance=..5]