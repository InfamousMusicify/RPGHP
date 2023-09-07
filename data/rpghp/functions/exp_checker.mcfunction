# exp_checker



# check players full exp count against their level
# do not reset players over max hp

# this is intended as a bugfix for people who have lower base health then they shud.
# or a feature if you look at it another way, this ensures people have the health they earned thru exp.

# store exp for recalc
scoreboard players operation @s rpghp.xpcount2 = @s rpghp.xpcount
# reset hp track temporarily for recalc math
#scoreboard players operation @s rpghp.hptrack = #start_hp rpghp.config
scoreboard players set @s rpghp.hptrack 1

# add xpcount to tracker for math 
#scoreboard players operation @s rpghp.xptrack2 = @s rpghp.xpcount

# add base exp
#scoreboard players operation @s rpghp.xptrack += #base_exp rpghp.config


# run math loop func
#execute as @s run function rpghp:exp_checker2
function rpghp:exp_checker2
###################################################################################################
# fix negative score -full exp counter
execute if score @s rpghp.xpcount matches ..-1 run scoreboard players set @s rpghp.xpcount 0
execute if score @s rpghp.xpcount2 matches ..-1 run scoreboard players set @s rpghp.xpcount2 0