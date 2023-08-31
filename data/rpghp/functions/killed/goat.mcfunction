# rpghp:killed/goat

# give player exp from killing, unless at max health
execute unless score #goat rpghp.config matches ..-1 if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xp += #goat rpghp.config
# negative
execute if score #goat rpghp.config matches ..-1 unless score @s rpghp.xpcount matches ..0 run scoreboard players operation @s rpghp.xp += #goat rpghp.config
# xp_math - health
execute unless score #goat rpghp.config matches ..-1 if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math
# neg
execute if score #goat rpghp.config matches ..-1 run function rpghp:xp_math

# do health array - gives player new health amount
#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
#function rpghp:health_array

# revoke adv
advancement revoke @s only rpghp:killed/goat
