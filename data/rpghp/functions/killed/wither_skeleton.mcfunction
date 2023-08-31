# rpghp:killed/wither_skeleton

# give exp
scoreboard players operation @s rpghp.xp += #wither_skeleton rpghp.config
# do math
execute unless score @s rpghp.xp matches 0 run function rpghp:xp_math
# revoke adv
advancement revoke @s only rpghp:killed/wither_skeleton
