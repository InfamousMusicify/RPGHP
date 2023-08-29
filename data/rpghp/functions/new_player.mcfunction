# new_player

# bug fix for logout taking 2 logs
scoreboard players set @s rpghp_log 0

scoreboard players enable @a rpghp

# starting HP
execute unless score @s rpghp.hptrack matches 1.. run scoreboard players operation @s rpghp.hptrack = #start_hp rpghp.config


# TODO
# player choices:
# max HP set by admin