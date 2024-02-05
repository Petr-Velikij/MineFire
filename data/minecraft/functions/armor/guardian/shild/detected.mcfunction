kill @e[type=arrow,tag=selected,distance=..15]
summon marker ~ ~ ~ {Tags:["particle"]}
execute as @e[type=marker,tag=particle,distance=..1,limit=1] run function armor/guardian/shild/particle