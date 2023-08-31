# rpghp:killed/axolotl

# give exp
scoreboard players operation @s rpghp.xp += #axolotl rpghp.config
# do math
execute unless score @s rpghp.xp matches 0 run function rpghp:xp_math
# revoke adv
advancement revoke @s only rpghp:killed/axolotl
