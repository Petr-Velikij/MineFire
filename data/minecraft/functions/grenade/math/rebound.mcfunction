execute store result score *X varTime run data get entity @e[type=item,tag=MyItem,distance=..20,limit=1] Motion[0] 10
execute store result score *Y varTime run data get entity @e[type=item,tag=MyItem,distance=..20,limit=1] Motion[1] 10
execute store result score *Z varTime run data get entity @e[type=item,tag=MyItem,distance=..20,limit=1] Motion[2] 10

#tellraw @a [{"text": "Позиция ["},{"score":{"name":"*X","objective":"varTime"}},{"text": ","},{"score":{"name":"*Y","objective":"varTime"}},{"text": ","},{"score":{"name":"*Z","objective":"varTime"}},{"text": "]"}]

data merge entity @s {inGround:0b,SoundEvent:"item.flintandsteel.use"}
execute store result entity @s Motion[0] double 0.00008 run scoreboard players get @s varTimeEntity1
execute store result entity @s Motion[1] double 0.00008 run scoreboard players get @s varTimeEntity2
execute store result entity @s Motion[2] double 0.00008 run scoreboard players get @s varTimeEntity3

execute if score *X varTime matches 0 if score @s varTimeEntity1 matches 100.. store result entity @s Motion[0] double -0.00005 run scoreboard players get @s varTimeEntity1
execute if score *X varTime matches 0 if score @s varTimeEntity1 matches ..-100 store result entity @s Motion[0] double -0.00005 run scoreboard players get @s varTimeEntity1
execute if score *Y varTime matches 0 if score @s varTimeEntity2 matches 100.. store result entity @s Motion[1] double -0.00005 run scoreboard players get @s varTimeEntity2
execute if score *Y varTime matches 0 if score @s varTimeEntity2 matches ..-100 store result entity @s Motion[1] double -0.00005 run scoreboard players get @s varTimeEntity2
execute if score *Z varTime matches 0 if score @s varTimeEntity3 matches 100.. store result entity @s Motion[2] double -0.00005 run scoreboard players get @s varTimeEntity3
execute if score *Z varTime matches 0 if score @s varTimeEntity3 matches ..-100 store result entity @s Motion[2] double -0.00005 run scoreboard players get @s varTimeEntity3

scoreboard players add @s rebound.count 1

function grenade/math/item
execute if score @s rebound.count matches 5.. run data merge entity @e[type=item,tag=MyItem,distance=..20,limit=1] {Motion:[0d,0d,0d]}