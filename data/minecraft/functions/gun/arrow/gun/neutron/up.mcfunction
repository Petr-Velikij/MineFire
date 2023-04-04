particle dust 0 1 0 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..250]
execute if entity @s[nbt={inGround:0b},tag=hitMarcer] run function gun/arrow/gun/neutron/hit
execute if entity @s[nbt={inGround:1b}] run function gun/arrow/gun/neutron/explosion