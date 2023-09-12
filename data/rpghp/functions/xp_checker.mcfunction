# xp_checker
# called by tick on players with xpcount


# store exp for recalc -full point calc
execute if score #exp_checker rpghp.config matches 1..2 run scoreboard players operation @s rpghp.xpcount2 = @s rpghp.xpcount
# reset hp track temporarily for recalc math
execute if score #exp_checker rpghp.config matches 1..2 unless score @s rpghp.hpmod < #rpghp.hpmod rpghp.config unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players set @s rpghp.hptrack 1
# run math loop func
execute if score #exp_checker rpghp.config matches 1 run function rpghp:xp_math_full

execute if score #exp_checker rpghp.config matches 2 run function rpghp:xp_math_raw

# store base health score to tracker for maths  -unless respawning- death interferes with this math   ## unless score @s rpghp.respawn matches 1..20   -only neded for kill funcs
execute if score #exp_checker rpghp.config matches 3 run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
# run math loop func -lvl based
execute if score #exp_checker rpghp.config matches 3 run function rpghp:xp_math_lvl

