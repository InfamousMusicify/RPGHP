# respawn

##### Add an unless for score to close to zero levels and exp 
# death exp penalty
execute if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xp += #death rpghp.config


#execute if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math
# store score to tracker for maths
#execute as @a unless score @s rpghp.hp <= @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
scoreboard players operation @s rpghp.xptrack = @s rpghp.xp
# add 1 to health if xp is over current levels needed amount
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1
# if score is less than zero, revert 1 level, unless at level 1
execute if score @s rpghp.xp matches ..-1 unless score @s rpghp.hp matches 1 run scoreboard players operation @s rpghp.xp *= #neg1 rpghp.config

# store arb health score for math
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
# do remaining xp calc
#scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
execute if score @s rpghp.xp >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult

# exp recalc points needed for current level
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #rpghp.xpmult rpghp.config

# store new xp value after math
scoreboard players operation @s rpghp.xp = @s rpghp.xptrack



# give player health back after above pre-checks
#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
function rpghp:health_array


#effect give @s minecraft:instant_health 1 252
execute unless score #rpghp_rsp_heal rpghp.config matches 1.. as @s[scores={rpghp.hptrack=21..}] run effect give @s minecraft:instant_health 1 252








#old 


# max base health
# attribute @s minecraft:generic.max_health base set 1024


##### Add an unless for score to close to zero levels and exp 
# death exp penalty
# change to variable math later
#scoreboard players remove @s rpghp.xp 20
#scoreboard players operation @s rpghp.xp += #death rpghp.config

#function rpghp:xp_math


# if score is less than zero, revert 1 level, unless at level 1  # revert hp 1 level and redo math on exp if exp taken down below 0 on current level
#xecute if score @s rpghp.xp < #zero rpghp.config run function rpghp:revert_lvl
###execute if score @s rpghp.xp < #zero rpghp.config unless score @s rpghp.hp matches 1 run function rpghp:revert_lvl

# store arb health score for math
###scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hp
# do remaining xp calc
###scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult
# exp recalc points needed for current level
###execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #rpghp.xpmult rpghp.config

# give player health back after above pre-checks
#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array

# start of max level check for leveling funcs. maybe not supposed to be in respawn? shud be in level funcs
#execute unless score @s rpghp.hptrack >= #max_hp rpghp.config run 
