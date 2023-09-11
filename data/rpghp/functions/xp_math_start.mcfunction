# xp_math_start




# upper redundancies for unrelated things
execute if score #max_hp rpghp.config matches 1025.. run scoreboard players set #max_hp rpghp.config 1024


########################################################################################################################################################################################################################
# STORE EXP   -store variable to xp per level tracker for math
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# negative
execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# FULL EXP count storage
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# negative
execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# reset main xp
scoreboard players set @s rpghp.xp 0

#############################################################

# store exp for recalc -full point calc
execute if score #xp_math rpghp.config matches 0 run scoreboard players operation @s rpghp.xpcount2 = @s rpghp.xpcount
# reset hp track temporarily for recalc math
execute if score #xp_math rpghp.config matches 0 run scoreboard players set @s rpghp.hptrack 1
# run math loop func
execute if score #xp_math rpghp.config matches 0 run function rpghp:xp_math_full


# store base health score to tracker for maths
scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
# run math loop func -lvl based
execute if score #xp_math rpghp.config matches 1 run function rpghp:xp_math_lvl

#########################################################################################

##### redundancies unreleated to mains ##### ##### ##### ##### ##### 
# fix negative score -full exp counter
execute if score @s rpghp.xpcount matches ..-1 run scoreboard players set @s rpghp.xpcount 0
execute if score @s rpghp.xpcount2 matches ..-1 run scoreboard players set @s rpghp.xpcount2 0
execute if score @s rpghp.xptrack matches ..-1 run scoreboard players set @s rpghp.xptrack 0
