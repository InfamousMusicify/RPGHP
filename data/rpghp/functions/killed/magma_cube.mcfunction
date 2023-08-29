# rpghp:killed/magma_cube

# give player exp from killing, unless at max health -debating how negative exp shud work?  this is how the og pluin worked if i remember, once at max level you dont loose it.  i also dont remember loosing hearts? maybe thats a setting
execute if score @s rpghp.hptrack < #max_hp rpghp.config run scoreboard players operation @s rpghp.xp += #magma_cube rpghp.config
# xp_math - health
execute if score @s rpghp.hptrack < #max_hp rpghp.config run function rpghp:xp_math

# do health array - gives player new health amount
#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
#function rpghp:health_array

# revoke adv
advancement revoke @s only rpghp:killed/magma_cube
