# xp_math_store

#debug msg bkp
##### tellraw @s ["",{"score":{"name":"@s","objective":"rpghp.xp"},"color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"XP","color":"gray"},{"text":"","color":"dark_gray"}]}},"/",{"score":{"name":"@s","objective":"rpghp.xptrack"},"color":"red","bold":"true","hoverEvent":{"action":"show_text","contents":["",{"text":"XPTrack","color":"gray"},{"text":"","color":"dark_gray"}]}},{"text":"/","color":"red","bold":"true"},{"score":{"name":"@s","objective":"rpghp.hp"},"color":"red","bold":"true","hoverEvent":{"action":"show_text","contents":["",{"text":"HP","color":"gray"},{"text":"","color":"dark_gray"}]}},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"rpghp.hptrack"},"color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"HPtrack","color":"gray"},{"text":"","color":"dark_gray"}]}}]


#execute if score @s rpghp.xptrack matches ..0 run say fuck you

# bug fix to stop xp flippage
#OG# execute if score @s rpghp.hp <= #lowest_hp rpghp.config if score @s rpghp.xp matches ..-1 if score @s rpghp.xptrack matches ..0 run scoreboard players set @s rpghp.xp 0

# LVL EXP 
# STORE EXP   -store variable to xp per level tracker for math
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
# negative
#OG# execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
#track# 
execute if score #lowest_hp rpghp.config <= @s rpghp.hptrack if score @s rpghp.xp matches ..-1 unless score @s rpghp.xptrack matches ..0 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp
#Both # execute if score #lowest_hp rpghp.config <= @s rpghp.hp if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 unless score @s rpghp.xptrack matches ..0 run scoreboard players operation @s rpghp.xptrack += @s rpghp.xp

# bug fix to stop xp flippage
#OG# execute if score @s rpghp.hp <= #lowest_hp rpghp.config if score @s rpghp.xp matches ..-1 if score @s rpghp.xpcount matches ..0 run scoreboard players set @s rpghp.xp 0

# FULL EXP count storage   ---   (bug fix on negative requires hardlock on 0 xptrack, otherwise people can skip the lvls by dying with 0 on xptracker.)
execute unless score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# negative
#OG# execute if score #lowest_hp rpghp.config <= @s rpghp.hp unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xp matches ..-1 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
#both#  execute if score #lowest_hp rpghp.config <= @s rpghp.hp if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 unless score @s rpghp.xptrack matches ..0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
#both split# seems to work the best.
execute if score #lowest_hp rpghp.config <= @s rpghp.hptrack if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 unless score @s rpghp.xptrack matches ..0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
# execute unless player at or below lowest health, if neg xp, unless full count at 0, if xptrack 0, run xp add
#execute unless score @s rpghp.hp <= #lowest_hp rpghp.config if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xptrack matches 0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp

### execute if score @s rpghp.hp >= #lowest_hp rpghp.config if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xptrack matches 0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
#execute if score @s rpghp.hp >= #lowest_hp rpghp.config unless score @s rpghp.hp = #lowest_hp rpghp.config if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 if score @s rpghp.xptrack matches 0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
execute if score @s rpghp.hptrack > #lowest_hp rpghp.config if score @s rpghp.xp matches ..-1 if score @s rpghp.xptrack matches 0 unless score @s rpghp.xpcount matches ..0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp

#split# 
#execute if score #lowest_hp rpghp.config <= @s rpghp.hp if score @s rpghp.xp matches ..-1 unless score @s rpghp.xptrack matches ..0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
#execute if score #lowest_hp rpghp.config <= @s rpghp.hp if score @s rpghp.xp matches ..-1 unless score @s rpghp.xptrack matches ..0 run scoreboard players set @s rpghp.xp 0
#execute if score #lowest_hp rpghp.config <= @s rpghp.hp if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 run scoreboard players operation @s rpghp.xpcount += @s rpghp.xp
###execute if score #lowest_hp rpghp.config <= @s rpghp.hp if score @s rpghp.xp matches ..-1 unless score @s rpghp.xpcount matches ..0 run scoreboard players set @s rpghp.xp 0

# if score @s rpghp.xptrack matches 1..
# if score @s rpghp.xpcount matches 1..

# reset main xp
scoreboard players set @s rpghp.xp 0
