# xp_math
# 


##### ##### ##### ##### ##### ##### ##### ##### ##### 

# store base health score to tracker for maths
scoreboard players operation @s rpghp.hptrack = @s rpghp.hp

# store variable to xp per level tracker for math
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# negative
execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# full exp count storage
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# negative
execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# reset main xp
scoreboard players set @s rpghp.xp 0

# health tracker mods
# add 1 to health if xp is over current levels needed amount
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 50 force
# negative - if score is less than zero, revert 1 level, unless at level 1, unless at or below lowest hp
execute unless score @s rpghp.hp matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 100 force
execute unless score @s rpghp.hp matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 run scoreboard players remove @s rpghp.hptrack 1

# subtract mult from gained exp, if gained exp is greater than needed
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
# store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# finish level revert, subtract neg points from new mult.
execute unless score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xpmult
# negative -reset xptrack, if at or below lowest health
execute if score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 run scoreboard players set @s rpghp.xptrack 0

# fix negative score -full exp counter
execute if score @s rpghp.xpcount matches ..-1 run scoreboard players set @s rpghp.xpcount 0

##### ##### ##### ##### ##### ##### ##### ##### ##### 
# give players health
#function rpghp:health_array
execute unless score @s rpghp.hptrack = @s rpghp.hp run function rpghp:health_array
execute store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get

# redundancy loop for getting multiple levels of exp at once
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math
# negative -loop loss level
execute if score @s rpghp.xptrack matches ..-1 run function rpghp:xp_math
##### ##### ##### ##### ##### ##### ##### ##### ##### 








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