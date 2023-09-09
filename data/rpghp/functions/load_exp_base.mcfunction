# load_exp
# intial exp math to store base exp to admin storage and new players.


# reset max exp for 2nd and 3rd calcs. recalc redundancy
execute if score #exp_math2 rpghp.config matches 1.. run scoreboard players reset #base_exp rpghp.config
execute if score #exp_math2 rpghp.config matches 1.. run scoreboard players reset #exp_math2 rpghp.config

# add 1 to variable unless start_hp reached
execute if score #j rpghp.config < #start_hp rpghp.config run scoreboard players add #j rpghp.config 1

# store variable for multiplication
execute unless score #j rpghp.config = #start_hp rpghp.config run scoreboard players operation #j_math rpghp.config = #j rpghp.config
# multiply variable 
execute unless score #j rpghp.config = #start_hp rpghp.config run scoreboard players operation #j_math rpghp.config *= #xpmult rpghp.config
# store result
execute unless score #j rpghp.config = #start_hp rpghp.config run scoreboard players operation #base_exp rpghp.config += #j_math rpghp.config

# loop function if variable is not at max hp yet
execute if score #j rpghp.config < #start_hp rpghp.config run function rpghp:load_exp_base
##### ##### ##### ##### ##### ##### ##### ##### ##### 


# start to reset exp max, for second and third calcs, recalc redundancy
execute if score #j rpghp.config >= #start_hp rpghp.config run scoreboard players add #exp_math2 rpghp.config 1
# kill variable after math is done
execute if score #j rpghp.config >= #start_hp rpghp.config run scoreboard players reset #j rpghp.config

# remove first levels worth of exp from base score
#execute if score #exp_math2 rpghp.config matches 1.. run scoreboard players operation #base_exp rpghp.config -= #xpmult rpghp.config