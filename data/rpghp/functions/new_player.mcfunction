# new_player


##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# bug fix to stop respawn function firing on new players and fucking up their scores and health
scoreboard players add @s rpghp.respawn 30
# bug fix for logout taking 2 logs
scoreboard players set @s rpghp_log 0
##### ##### ##### ##### ##### ##### ##### ##### ##### #####
scoreboard players enable @s rpghp

scoreboard players add @s rpghp.rpghp 0
scoreboard players add @s rpghp.hpmod 0
scoreboard players set @s rpghp.hpchoose 0
scoreboard players add @s rpghp.respheal 0
scoreboard players add @s rpghp.hpch 0
scoreboard players add @s rpghp.xptrack 0
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# starting HP
##### execute unless score @s rpghp.hptrack matches 1.. run scoreboard players operation @s rpghp.hpset = #start_hp rpghp.config
# more starting hp
#execute unless score @s rpghp.hp matches 1.. run scoreboard players operation @s rpghp.hp = #start_hp rpghp.config
#execute unless score @s rpghp.hptrack matches 1.. run scoreboard players operation @s rpghp.hptrack = #start_hp rpghp.config
execute unless score @s rpghp.earnt_hp matches 1.. run scoreboard players operation @s rpghp.earnt_hp = #start_hp rpghp.config

# starting XP
execute unless score @s rpghp.xpcount matches 0.. run scoreboard players operation @s rpghp.xpcount = #base_exp rpghp.config

# hp choice for player commands
#execute unless score @s rpghp.hpch matches 1.. run scoreboard players operation @s rpghp.hpch = @s rpghp.earnt_hp

# proper health setter
execute unless score @s rpghp.hp matches 1.. unless score @s rpghp.hptrack matches 1.. run function rpghp:new_player_sethp

#dont do this because itll add double# execute unless score @s rpghp.xptrack matches 1.. run scoreboard players operation @s rpghp.xptrack = #base_exp rpghp.config

# start exp mult counter  -currently trash and broken
#execute unless score @s rpghp.hptrack2 matches 1.. run scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
#execute unless score @s rpghp.xpmult matches 1.. store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# TODO
# player choices:
# max HP set by admin



