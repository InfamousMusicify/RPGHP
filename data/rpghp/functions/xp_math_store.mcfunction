# xp_math_store



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