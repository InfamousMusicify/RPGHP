# exp_checker



# check players full exp count against their level
# do not reset players over max hp

# this is intended as a bugfix for people who have lower base health then they shud.


# change arbitrary storages.
##### ##### ##### ##### ##### ##### ##### ##### ##### 

# store base health score to tracker for maths
scoreboard players operation @s rpghp.hptrack = @s rpghp.hp

# ### # store xp to tracker for math 
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# negative
execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# store variable to xp per level tracker for math
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# negative
execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# reset main xp
scoreboard players set @s rpghp.xp 0

# health tracker mods
# add 1 to health if xp is over current levels needed amount
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1
# negative - if score is less than zero, revert 1 level, unless at level 1, unless at or below lowest hp
execute unless score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 unless score @s rpghp.hp matches 1 run scoreboard players remove @s rpghp.hptrack 1

# do remaining xp calc
execute if score @s rpghp.xptrack >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
# exp recalc points needed for current level - # store arb health score for math
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# finish level revert, subtract neg points from new mult.
execute if score @s rpghp.xptrack matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xpmult

# fix negative score
execute if score @s rpghp.xpcount matches ..-1 run scoreboard players set @s rpghp.xpcount 0

##### ##### ##### ##### ##### ##### ##### ##### ##### 
# give players health
function rpghp:health_array

# redundancy loop for getting multiple levels of exp at once
execute if score @s rpghp.xptrack > @s rpghp.xpmult run function rpghp:xp_math
##### ##### ##### ##### ##### ##### ##### ##### ##### 
