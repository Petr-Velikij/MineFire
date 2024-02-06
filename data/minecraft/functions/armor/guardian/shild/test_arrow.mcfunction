tag @e[type=arrow,tag=!no_detected,limit=1,distance=..15] add selected
#execute if entity @e[type=arrow,tag=selected] run tellraw @a "arrow"
scoreboard players set intersection varTime 1

execute store result score Sx varTime run data get entity @e[type=arrow,tag=selected,distance=..15,limit=1] Pos[0] 10
execute store result score Sy varTime run data get entity @e[type=arrow,tag=selected,distance=..15,limit=1] Pos[1] 10
execute store result score Sz varTime run data get entity @e[type=arrow,tag=selected,distance=..15,limit=1] Pos[2] 10

execute store result score Mx varTime run data get entity @e[type=arrow,tag=selected,distance=..15,limit=1] Motion[0] 10
execute store result score My varTime run data get entity @e[type=arrow,tag=selected,distance=..15,limit=1] Motion[1] 10
execute store result score Mz varTime run data get entity @e[type=arrow,tag=selected,distance=..15,limit=1] Motion[2] 10

scoreboard players operation Ex varTime = Sx varTime
scoreboard players operation Ex varTime += Mx varTime
scoreboard players operation Ey varTime = Sy varTime
scoreboard players operation Ey varTime += My varTime
scoreboard players operation Ez varTime = Sz varTime
scoreboard players operation Ez varTime += Mz varTime

scoreboard players operation VBx varTime = Ex varTime
scoreboard players operation VBx varTime -= Sx varTime
scoreboard players operation VBy varTime = Ey varTime
scoreboard players operation VBy varTime -= Sy varTime
scoreboard players operation VBz varTime = Ez varTime
scoreboard players operation VBz varTime -= Sz varTime

execute if score VBy varTime matches 0 run scoreboard players add VBy varTime 1

function armor/guardian/shild/math/cross
function armor/guardian/shild/math/sign
execute if score sign(crossA) varTime = sign(crossB) varTime run scoreboard players set intersection varTime 0
execute if score crossA varTime matches 0 run scoreboard players set intersection varTime 0
execute if score crossB varTime matches 0 run scoreboard players set intersection varTime 0
execute if score sign(crossC) varTime = sign(crossD) varTime run scoreboard players set intersection varTime 0
execute if score crossC varTime matches 0 run scoreboard players set intersection varTime 0
execute if score crossD varTime matches 0 run scoreboard players set intersection varTime 0
#tellraw Petr_l [{"text":"a="},{"score":{"name":"sign(crossA)","objective":"varTime"}},{"text":" b="},{"score":{"name":"sign(crossB)","objective":"varTime"}},{"text":" c="},{"score":{"name":"sign(crossC)","objective":"varTime"}},{"text":" d="},{"score":{"name":"sign(crossD)","objective":"varTime"}}]
#execute if score sign(crossA) varTime matches 1 run scoreboard players set intersection varTime 0

execute if score intersection varTime matches 1 run function armor/guardian/shild/math/point
execute if score Py varTime < LDy varTime run scoreboard players set intersection varTime 0
execute if score Py varTime > LUy varTime run scoreboard players set intersection varTime 0

execute if score intersection varTime matches 1 run function armor/guardian/shild/detected
tag @e[type=arrow,tag=selected,distance=..15] add no_detected
tag @e[type=arrow,tag=selected,distance=..15] remove selected
execute if entity @e[type=arrow,tag=!no_detected,distance=..15] run function armor/guardian/shild/test_arrow