title @s times 0 3 0
title @s title {"text":""}

execute if score @s Power matches 100..200 run title @s subtitle {"text":"\\     /","color":"dark_red"}
execute if score @s Power matches 201..400 run title @s subtitle {"text":"\\    /","color":"dark_red"}
execute if score @s Power matches 401..600 run title @s subtitle {"text":"\\   /","color":"dark_red"}
execute if score @s Power matches 800..999 run title @s subtitle {"text":"\\  /","color":"dark_red"}
execute if score @s Power matches 1000 run title @s subtitle {"text":"\\+/","color":"dark_red"}