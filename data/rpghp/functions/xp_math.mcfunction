# xp_math


# store score to tracker for maths
execute as @a unless score @s rpghp.hp <= @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
scoreboard players operation @s rpghp.xptrack = @s rpghp.xp
# add 1 to health if xp is over current levels needed amount
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1
# if score is less than zero, revert 1 level, unless at level 1
#execute if score @s rpghp.xp matches ..-1 unless score @s rpghp.hp matches 1 run function rpghp:revert_lvl
execute if score @s rpghp.xptrack matches ..-1 unless score @s rpghp.hp matches 1 run scoreboard players remove @s rpghp.hptrack 1
#execute if score @s rpghp.xptrack matches ..-1 unless score @s rpghp.hp matches 1 run say revert

# store arb health score for math
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
# do remaining xp calc
#scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
execute if score @s rpghp.xptrack >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult

# exp recalc points needed for current level
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# store new xp value after math  -old -now storing all points for more accurate math.
##OFF# scoreboard players operation @s rpghp.xp = @s rpghp.xptrack
scoreboard players operation @s rpghp.xp = @s rpghp.xptrack


# finish level revert, subtract neg points from new mult.
execute if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xpmult
execute if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xp = @s rpghp.xptrack
#scoreboard players operation @s rpghp.xptrack = @s rpghp.xpmult
#scoreboard players operation @s rpghp.xptrack += @s rpghp.xp


###
# give players health
function rpghp:health_array

# redundancy loop for getting multiple levels of exp at once
execute if score @s rpghp.xp > @s rpghp.xpmult run function rpghp:xp_math









#Old
# xp_math


# store score to tracker for maths
########## execute as @a unless score @s rpghp.hp <= @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
########## scoreboard players operation @s rpghp.xptrack = @s rpghp.xp
# add 1 to health if xp is over current levels needed amount
########## execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1
# if score is less than zero, revert 1 level, unless at level 1
#execute if score @s rpghp.xp matches ..-1 unless score @s rpghp.hp matches 1 run function rpghp:revert_lvl
########## execute if score @s rpghp.xptrack matches ..-1 unless score @s rpghp.hp matches 1 run scoreboard players remove @s rpghp.hptrack 1
#execute if score @s rpghp.xptrack matches ..-1 unless score @s rpghp.hp matches 1 run say revert

# store arb health score for math
########## scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
# do remaining xp calc
#scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
########## execute if score @s rpghp.xptrack >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult

# exp recalc points needed for current level
########## execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# store new xp value after math
########## scoreboard players operation @s rpghp.xp = @s rpghp.xptrack

# finish level revert, subtract neg points from new mult.
########## execute if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xpmult
########## execute if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xp = @s rpghp.xptrack
#scoreboard players operation @s rpghp.xptrack = @s rpghp.xpmult
#scoreboard players operation @s rpghp.xptrack += @s rpghp.xp


###
# give players health
########## function rpghp:health_array

# redundancy loop for getting multiple levels of exp at once
########## execute if score @s rpghp.xp > @s rpghp.xpmult run function rpghp:xp_math