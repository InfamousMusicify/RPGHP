# regen

# regen health -change to slower to be faithful to og plugin? add timer and whatnot if so
execute as @s[tag=rassilon_heal] run effect give @s minecraft:instant_health 1 8

# add a lock player in place with motion or teleports? with above timer and stuff.

# refine this
particle minecraft:flame ~ ~ ~ .05 .05 .05 .15 75 force
#tag @s remove rassilon_heal