# killed/zombie



# give player exp from killing, unless at max health
execute unless score #zombie rpghp.config matches ..-1 if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xp += #zombie rpghp.config
# negative
execute if score #zombie rpghp.config matches ..-1 run scoreboard players operation @s rpghp.xp += #zombie rpghp.config
# xp_math - health
execute unless score #zombie rpghp.config matches ..-1 if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math
# neg
execute if score #zombie rpghp.config matches ..-1 run function rpghp:xp_math

# do health array - gives player new health amount
#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
#function rpghp:health_array

# revoke adv
advancement revoke @s only rpghp:killed/zombie




















# old



# give player exp from killing, unless at max health -debating how negative exp shud work?  this is how the og pluin worked if i remember, once at max level you dont loose it.  i also dont remember loosing hearts? maybe thats a setting
####### execute if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xp += #zombie rpghp.config

####### execute if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math

# store score to tracker for maths
###scoreboard players operation @s rpghp.xptrack = @s rpghp.xp
# add 1 to health if xp is over current levels needed amount
###execute if score @s rpghp.xptrack > @s rpghp.xpmult run scoreboard players add @s rpghp.hptrack 1
# if score is less than zero, revert 1 level, unless at level 1
###execute if score @s rpghp.xp < #zero rpghp.config unless score @s rpghp.hp matches 1 run function rpghp:revert_lvl

# store arb health score for math
###scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hp
# do remaining xp calc
###scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
# exp recalc points needed for current level
###execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #rpghp.xpmult rpghp.config


# do health array - gives player new health amount
####### execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
# revoke adv
####### advancement revoke @s only rpghp:killed/zombie
