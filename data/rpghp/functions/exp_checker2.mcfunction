# exp_checker2
#
# Redo with lowest and highest checks!
# *highest -done
# Lowest -test implimentation

# store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# health tracker mods
# add 1 to health if xp is over current levels needed amount
#OG# execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1
#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run scoreboard players add @s rpghp.hptrack 1
#beta# execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run scoreboard players add @s rpghp.hptrack 1
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.hptrack 1

#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config at @a run particle minecraft:composter ~ ~ ~ 1 0 1 1 100 force


# subtract mult from gained exp, if gained exp is greater than needed
#OG# execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult
#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult
#beta# execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult

#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config at @a run particle minecraft:composter ~ ~ ~ 1 0 1 1 100 force

# store arb health score for math - exp recalc points needed for current level
#scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
#execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# set lowest hp if points to low
execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult if score #lowest_hp rpghp.config > @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = #lowest_hp rpghp.config


# store leftover to track for better math keeping
execute if score @s rpghp.xpcount2 < @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack = @s rpghp.xpcount2
#execute if score @s rpghp.xpcount2 < @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack = @s rpghp.xpcount2
#og#execute unless score @s rpghp.hptrack = @s rpghp.hp run function rpghp:health_array
execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 < @s rpghp.xpmult run function rpghp:health_array
execute if score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:health_array
#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:health_array
##### execute store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get
#scoreboard players operation @s rpghp.hptrack = @s rpghp.hp

# redundancy loop for getting multiple levels of exp at once         V fixed old bug spot
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:exp_checker2
##### execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult run function rpghp:exp_checker2
#function rpghp:exp_checker2
##### execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run schedule function rpghp:exp_checker_sched 1t
##### execute unless score @s rpghp.xpcount2 <= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:exp_checker2


