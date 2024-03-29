# reset_player

scoreboard players add @s rpghp.respawn 30
# bug fix for logout taking 2 logs
scoreboard players set @s rpghp_log 0
##### ##### ##### ##### ##### ##### ##### ##### ##### #####
scoreboard players enable @s rpghp

scoreboard players add @s rpghp.rpghp 0
scoreboard players add @s rpghp.hpmod 0
scoreboard players set @s rpghp.hpchoose 0
scoreboard players set @s rpghp.respheal 0
scoreboard players add @s rpghp.hpch 0
scoreboard players set @s rpghp.xptrack 0
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# starting HP
scoreboard players operation @s rpghp.earnt_hp = #start_hp rpghp.config

# starting XP
scoreboard players operation @s rpghp.xpcount = #base_exp rpghp.config

# proper health setter
function rpghp:new_player_sethp








