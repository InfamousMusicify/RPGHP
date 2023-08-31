# rpghp:killed/zombie_villager

# give exp
scoreboard players operation @s rpghp.xp += #zombie_villager rpghp.config
# do math
execute unless score @s rpghp.xp matches 0 run function rpghp:xp_math
# revoke adv
advancement revoke @s only rpghp:killed/zombie_villager
