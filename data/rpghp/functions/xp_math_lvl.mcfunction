# xp_math_lvl
# level based - Solid in one way - Broken and inconsistent in another way... - if chosen from day 1 by admin, its mostly fine.
# if players choose hp, it will reset their earnt hp level.
# i have no idea how this will work in tick... needs testing



# MULT   -store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# HEALTH ADD   -health tracker mods
# add 1 to health if xp is over current levels needed amount
# particle
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config unless score @s rpghp.hpmod < #rpghp.hpmod rpghp.config unless score #rpghp.hpmod rpghp.config matches 1.. at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 10 force
# hptrack
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config unless score @s rpghp.hpmod < #rpghp.hpmod rpghp.config unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players add @s rpghp.hptrack 1
# hpch -only neg needs this
#execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hpch < #max_hp rpghp.config unless score @s rpghp.hpmod < #rpghp.hpmod rpghp.config unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players add @s rpghp.hpch 1

# negative - if score is less than zero, revert 1 level, unless at level 1, unless at or below lowest hp
#OG# execute unless score @s rpghp.hptrack matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hptrack if score @s rpghp.xptrack matches ..-1 at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 10 force
#OG# execute unless score @s rpghp.hptrack matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hptrack if score @s rpghp.xptrack matches ..-1 run scoreboard players remove @s rpghp.hptrack 1

# ignore the players choice, just check against earnt level and subtract if below
# particles
execute unless score @s rpghp.hptrack matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hptrack if score @s rpghp.xptrack matches ..-1 if score @s rpghp.earnt_hp < @s rpghp.hpch unless score #rpghp.hpmod rpghp.config matches 1.. at @s run particle minecraft:heart ~ ~ ~ 1 1 1 0.1 10 force
# base - unless hpmod admin 
execute unless score @s rpghp.hptrack matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hptrack if score @s rpghp.xptrack matches ..-1 unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players remove @s rpghp.hptrack 1
# mirror hpch -done in theory -only fire when player is using hpch and looses lowest level of hp -unless admin tgl -unless player toggle
execute unless score @s rpghp.hptrack matches 1 unless score #lowest_hp rpghp.config >= @s rpghp.hptrack if score @s rpghp.xptrack matches ..-1 if score @s rpghp.earnt_hp < @s rpghp.hpch unless score #rpghp.hpmod rpghp.config matches 1.. run scoreboard players remove @s rpghp.hpch 1
# earnt hp track -pos and neg  -may need revising
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.earnt_hp < #max_hp rpghp.config run scoreboard players add @s rpghp.earnt_hp 1

# MULT again  -store arb health score for math - exp recalc points needed for current level
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# MULT MINUS   -subtract mult from gained exp, if gained exp is greater than needed
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xptrack -= @s rpghp.xpmult


# MULT MINUS NEG   -finish level revert, subtract neg points from new mult.
execute unless score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xpmult
# negative -reset xptrack, if at or below lowest health
execute if score #lowest_hp rpghp.config >= @s rpghp.hp if score @s rpghp.xptrack matches ..-1 run scoreboard players set @s rpghp.xptrack 0

# fix negative score -full exp counter
execute if score @s rpghp.xpcount matches ..-1 run scoreboard players set @s rpghp.xpcount 0

# Store Earnt HP
#OG# execute if score @s rpghp.xpcount2 <= @s rpghp.xpmult run scoreboard players operation @s rpghp.earnt_hp = @s rpghp.hptrack


# HEALTH ARRAY #### ##### ##### ##### ##### ##### ##### ##### ##### 
# give players health
#function rpghp:health_array
#execute unless score @s rpghp.hptrack = @s rpghp.hp run function rpghp:health_array
execute store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get
#execute unless score @s rpghp.hptrack >= #max_hp rpghp.config if score @s rpghp.xptrack >= @s rpghp.xpmult run function rpghp:health_array
execute unless score @s rpghp.hptrack >= #max_hp rpghp.config unless score @s rpghp.hptrack = @s rpghp.hp unless score @s rpghp.hpch matches 1.. unless score @s rpghp.hpset matches 1.. run function rpghp:health_array


# LOOP   -redundancy loop for getting multiple levels of exp at once
execute if score @s rpghp.xptrack >= @s rpghp.xpmult if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math_lvl
# negative -loop loss level
execute if score @s rpghp.xptrack matches ..-1 run function rpghp:xp_math_lvl
##### ##### ##### ##### ##### ##### ##### ##### ##### 
