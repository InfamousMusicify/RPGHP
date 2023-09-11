# xp_math_full
#
# Redo with lowest and highest checks!
# *highest -done
# Lowest -test implimentation

# store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# health tracker mods
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1

# subtract mult from gained exp, if gained exp is greater than needed
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult

# set lowest hp if points to low
execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult if score #lowest_hp rpghp.config > @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = #lowest_hp rpghp.config

# TRACK XP store leftover to track for better math keeping
execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack = @s rpghp.xpcount2

# health array
#execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 <= @s rpghp.xpmult run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 10 force
execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 < @s rpghp.xpmult run function rpghp:health_array
execute if score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:health_array

# loop - multiple levels of exp at once
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:xp_math_full



