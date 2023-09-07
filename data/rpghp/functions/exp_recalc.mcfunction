# exp_recalc



# check players full exp count against their level
# do not reset players over max hp

# this is intended as a bugfix for people who have lower base health then they shud.
# or a feature if you look at it another way, this ensures people have the health they earned thru exp.


# store base health score to tracker for maths
scoreboard players operation @s rpghp.hptrack = @s rpghp.hp

scoreboard players operation #player_hp rpghp.config = @s rpghp.xpcount

# change -debate creating new variables jsut for this math on players? or use fakeplayers for math? do fakeplayers actually have an issue or is it an imagined issue?
# just for safety, since this will run on all players at once by default, i would make new variables per player
execute unless score #p rpghp.config >= #start_hp rpghp.config run scoreboard players add #p rpghp.config 1





##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
########## Basic mod, source material for maths  
##### -this math may be sort of the reverse of what i need, i need to count how much exp a player has earned and then calc a level based off the full count.
### This as it is could be useful for a exp wipe and level recalc based off of current max HP, more of HPreset sort of thing except its serverwide admin choice that resets and overrides you xp count and hp level utterly.
# not really sure if thats needed but... there it is if you want it... this is the new func to store it until i end up using it

# reset max exp for 2nd and 3rd calcs. recalc redundancy
execute if score @s rpghp.exp_math matches 1.. run scoreboard players reset @s rpghp.earned_exp
execute if score @s rpghp.exp_math matches 1.. run scoreboard players reset @s rpghp.exp_math

# store hp base to hp check here

# add 1 to variable unless currently stored HP reached
execute unless score @s rpghp.i >= @s rpghp.hpcheck run scoreboard players add @s rpghp.i 1

# store variable for multiplication
scoreboard players operation @s rpghp.i_math = @s rpghp.i
# multiply variable 
scoreboard players operation @s rpghp.i_math *= #xpmult rpghp.config
# add result to earned exp
scoreboard players operation @s rpghp.earned_exp += @s rpghp.i_math

# loop function if variable is not at max hp yet
execute unless score @s rpghp.i >= @s rpghp.hpcheck run function rpghp:exp_recalc
##### ##### ##### ##### ##### ##### ##### ##### ##### 

# start to reset exp max, for second and third calcs, recalc redundancy
execute if score @s rpghp.i >= @s rpghp.hpcheck run scoreboard players add @s rpghp.exp_math 1
# kill variable after math is done
execute if score @s rpghp.i >= @s rpghp.hpcheck run scoreboard players reset @s rpghp.i

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 



##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# source example with fakeplayers
# change arbitrary storages.
##### ##### ##### ##### ##### ##### ##### ##### ##### 

# reset max exp for 2nd and 3rd calcs. recalc redundancy
execute if score #exp_mathp rpghp.config matches 1.. run scoreboard players reset #earned_exp rpghp.config
execute if score #exp_mathp rpghp.config matches 1.. run scoreboard players reset #exp_mathp rpghp.config

# add 1 to variable unless start_hp reached
execute unless score #p rpghp.config >= #start_hp rpghp.config run scoreboard players add #p rpghp.config 1

# store variable for multiplication
scoreboard players operation #p_math rpghp.config = #p rpghp.config
# multiply variable 
scoreboard players operation #p_math rpghp.config *= #xpmult rpghp.config
# store result
scoreboard players operation #earned_exp rpghp.config += #p_math rpghp.config

# loop function if variable is not at max hp yet
execute unless score #p rpghp.config >= #start_hp rpghp.config run function rpghp:exp_checker
##### ##### ##### ##### ##### ##### ##### ##### ##### 

# start to reset exp max, for second and third calcs, recalc redundancy
execute if score #p rpghp.config >= #start_hp rpghp.config run scoreboard players add #exp_mathp rpghp.config 1
# kill variable after math is done
execute if score #p rpghp.config >= #start_hp rpghp.config run scoreboard players reset #p rpghp.config

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 