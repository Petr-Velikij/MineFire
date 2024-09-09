effect give @s levitation 1 40 false
playsound minecraft:block.piston.contract player @a[distance=..15] ~ ~ ~ 2 1.6
#execute if data entity @s Inventory[{Slot:-106b}] run give @s firework_rocket 3
#execute unless data entity @s Inventory[{Slot:-106b}] run item replace entity @s weapon.offhand with firework_rocket 3
tag @s add fly