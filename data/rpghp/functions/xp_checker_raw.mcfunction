# xp_math_raw



# 
# Hp Gain with no limits - ignores lowest and highest scores, pure calculations for exp to level

# store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# health tracker mods
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run scoreboard players add @s rpghp.hptrack 1

# subtract mult from gained exp, if gained exp is greater than needed
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult

# health array
execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 <= @s rpghp.xpmult run function rpghp:health_array
execute if score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:health_array

# redundancy loop for getting multiple levels of exp at once
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run function rpghp:xp_checker_raw
