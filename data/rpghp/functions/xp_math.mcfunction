# xp_math
# called by killing or death



# upper redundancies for unrelated things
execute if score #max_hp rpghp.config matches 1025.. run scoreboard players set #max_hp rpghp.config 1024


########################################################################################################################################################################################################################
# STORE EXP   -store variable to xp per level tracker for math
execute unless score #xp_math rpghp.config matches 0 run function rpghp:xp_math_store

#############################################################

# store exp for recalc -full point calc
execute if score #xp_math rpghp.config matches 1..2 run scoreboard players operation @s rpghp.xpcount2 = @s rpghp.xpcount
# reset hp track temporarily for recalc math
execute if score #xp_math rpghp.config matches 1..2 unless score @s rpghp.hpmod < #rpghp.hpmod rpghp.config unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players set @s rpghp.hptrack 1
execute if score #xp_math rpghp.config matches 1..2 run scoreboard players set @s rpghp.earnt_hp 1
# run math loop func
execute if score #xp_math rpghp.config matches 1 run function rpghp:xp_math_full

execute if score #xp_math rpghp.config matches 2 run function rpghp:xp_math_raw

# store base health score to tracker for maths  -unless respawning- death interferes with this math
execute if score #xp_math rpghp.config matches 3 unless score @s rpghp.respawn matches 1..20 run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
# run math loop func -lvl based
execute if score #xp_math rpghp.config matches 3 run function rpghp:xp_math_lvl

#########################################################################################

##### redundancies unreleated to mains ##### ##### ##### ##### ##### 
# fix negative score -full exp counter
execute if score @s rpghp.xpcount matches ..-1 run scoreboard players set @s rpghp.xpcount 0
execute if score @s rpghp.xpcount2 matches ..-1 run scoreboard players set @s rpghp.xpcount2 0
execute if score @s rpghp.xptrack matches ..-1 run scoreboard players set @s rpghp.xptrack 0
