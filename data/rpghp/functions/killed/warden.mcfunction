# rpghp:killed/warden

# give exp
scoreboard players operation @s rpghp.xp += #warden rpghp.config
# do math
execute unless score @s rpghp.xp matches 0 run function rpghp:xp_math
# revoke adv
advancement revoke @s only rpghp:killed/warden
