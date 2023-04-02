effect give @s invisibility 3 0 true
summon phantom ~ ~ ~ {PersistenceRequired:1b,Tags:["scout"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.follow_range,Base:-1}]}
scoreboard players operation @e[type=phantom,distance=..1,limit=1,sort=nearest,tag=scout] ID.Owner = @s ID.Player
scoreboard players operation @e[type=phantom,distance=..1,limit=1,sort=nearest,tag=scout] ID.Team = @s ID.Team
scoreboard players set @s armor_cooldown 1800