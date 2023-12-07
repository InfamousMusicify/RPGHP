# xp_math_full
#
# Redo with lowest and highest checks!
# *highest -done
# Lowest -test implimentation
# say math full fire

# store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# health tracker mods
# add health if, xpcount2 is less or = to xpmult if hptrack is less than #max_hp unless player/admin hpmod off
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config unless score @s rpghp.hpmod < #rpghp.hpmod rpghp.config unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players add @s rpghp.hptrack 1
# add earnt hp if, xpcount2 is less or = to xpmult if hptrack is less than #max_hp - ignores hpmod settings, internal storage
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players add @s rpghp.earnt_hp 1

# subtract mult from gained exp, if gained exp is greater than needed
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xpcount2 -= @s rpghp.xpmult

# set lowest hp if points to low
execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult if score #lowest_hp rpghp.config > @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = #lowest_hp rpghp.config
execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult if score #lowest_hp rpghp.config > @s rpghp.earnt_hp run scoreboard players operation @s rpghp.earnt_hp = #lowest_hp rpghp.config
# TRACK XP store leftover to track for better math keeping
execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult run scoreboard players operation @s rpghp.xptrack = @s rpghp.xpcount2


# check the final scoreboard being set  -  count2 is recalc counter, count is full count
###execute if score @s rpghp.xpcount2 > #max_exp rpghp.config run scoreboard players operation @s rpghp.xpcount2 = #max_exp rpghp.config

# Store Earnt HP
##### execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult run scoreboard players operation @s rpghp.earnt_hp = @s rpghp.hptrack

# health array
#execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 <= @s rpghp.xpmult run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 10 force
execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 < @s rpghp.xpmult unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. run function rpghp:health_array
#execute unless score @s rpghp.hptrack > #max_hp rpghp.config if score @s rpghp.xpcount2 < @s rpghp.xpmult unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. run function rpghp:health_array
# hpch mirror - fires if over max
execute if score @s rpghp.hptrack >= #max_hp rpghp.config unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. run function rpghp:health_array
#execute if score @s rpghp.hptrack > #max_hp rpghp.config unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. run say arb test
#execute if score @s rpghp.hptrack > #max_hp rpghp.config unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. run function rpghp:health_array

# hurt players when hp is changed below 20 for acurate tracking/visulas
##### execute unless score #hpchng_hurt rpghp.config matches 1.. if score @s rpghp.xpcount2 < @s rpghp.xpmult run effect give @s[scores={rpghp.hptrack=..19,rpghp.respawn=81..}] minecraft:instant_damage 1 0 true

#max_exp rpghp.config

# health_array_track
##### execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 < @s rpghp.xpmult unless score @s rpghp.ha_track matches 1.. run scoreboard players add @s rpghp.ha_track 1


# level up tracker - for particle effects and msgs
# at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 10 force

#execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xpcount2 < @s rpghp.xpmult unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. unless score @s rpghp.lvlup matches 1.. run scoreboard players add @s rpghp.lvlup 1


# loop - multiple levels of exp at once
execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack >= #max_hp rpghp.config run function rpghp:xp_math_full
#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack > #max_hp rpghp.config run function rpghp:xp_math_full
#execute if score @s rpghp.xpcount2 >= @s rpghp.xpmult unless score @s rpghp.hptrack > #max_hp rpghp.config run say arb test


