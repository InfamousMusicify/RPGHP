# new_player
say new player
# bug fix for logout taking 2 logs
scoreboard players set @s rpghp_log 0
# bug fix to stop respawn function firing on new players and fucking up their scores and health
scoreboard players add @s rpghp.respawn 30

scoreboard players enable @a rpghp

# starting HP
execute unless score @s rpghp.hptrack matches 1.. run scoreboard players operation @s rpghp.hpset = #start_hp rpghp.config

# start exp mult counter  -currently trash and broken
#execute unless score @s rpghp.hptrack2 matches 1.. run scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
#execute unless score @s rpghp.xpmult matches 1.. store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

# TODO
# player choices:
# max HP set by admin