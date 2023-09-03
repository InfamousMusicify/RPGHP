# new_player




# bug fix for logout taking 2 logs
scoreboard players set @s rpghp_log 0

#

# bug fix to stop respawn function firing on new players and fucking up their scores and health
scoreboard players add @s rpghp.respawn 30

scoreboard players enable @a rpghp

# starting HP
execute unless score @s rpghp.hptrack matches 1.. run scoreboard players operation @s rpghp.hpset = #start_hp rpghp.config
# more starting hp
execute unless score @s rpghp.hp matches 1.. run scoreboard players operation @s rpghp.hp = #start_hp rpghp.config
execute unless score @s rpghp.hptrack matches 1.. run scoreboard players operation @s rpghp.hptrack = #start_hp rpghp.config

# starting XP
execute unless score @s rpghp.xpcount matches 0.. run scoreboard players operation @s rpghp.xpcount = #base_exp rpghp.config
#dont do this because itll add double# execute unless score @s rpghp.xptrack matches 1.. run scoreboard players operation @s rpghp.xptrack = #base_exp rpghp.config

# start exp mult counter  -currently trash and broken
#execute unless score @s rpghp.hptrack2 matches 1.. run scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
#execute unless score @s rpghp.xpmult matches 1.. store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# TODO
# player choices:
# max HP set by admin