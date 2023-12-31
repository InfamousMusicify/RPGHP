# load_exp_max
# intial exp math to store max exp to admin storage and or new players.

execute if score #max_hp rpghp.config matches 1025.. run scoreboard players set #max_hp rpghp.config 1024

# all lvels including final level =  max points

#####     Max EXP
# reset max exp for 2nd and 3rd calcs. recalc redundancy
execute if score #exp_mathed rpghp.config matches 1.. run scoreboard players reset #max_exp rpghp.config
execute if score #exp_mathed rpghp.config matches 1.. run scoreboard players reset #exp_mathed rpghp.config

# add 1 to variable unless max_hp reached
execute unless score #i rpghp.config >= #max_hp rpghp.config run scoreboard players add #i rpghp.config 1

# store variable for multiplication
scoreboard players operation #i_math rpghp.config = #i rpghp.config
# multiply variable 
scoreboard players operation #i_math rpghp.config *= #xpmult rpghp.config
# store result
scoreboard players operation #max_exp rpghp.config += #i_math rpghp.config

# loop function if variable is not at max hp yet
execute unless score #i rpghp.config >= #max_hp rpghp.config run function rpghp:load_exp_max
# start to reset exp max, for second and third calcs.
execute if score #i rpghp.config >= #max_hp rpghp.config run scoreboard players add #exp_mathed rpghp.config 1
# kill variable after math is done
execute if score #i rpghp.config >= #max_hp rpghp.config run scoreboard players reset #i rpghp.config
#####     Max EXP Ends




