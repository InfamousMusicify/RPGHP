# xp_checker


execute if score #exp_checker rpghp.config matches 1..2 run scoreboard players operation @s rpghp.xpcount2 = @s rpghp.xpcount
execute if score #exp_checker rpghp.config matches 1..2 run scoreboard players set @s rpghp.hptrack 1
execute if score #exp_checker rpghp.config matches 1 run function rpghp:xp_math_full

execute if score #exp_checker rpghp.config matches 2 run function rpghp:xp_math_raw

execute if score #exp_checker rpghp.config matches 3 run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
execute if score #exp_checker rpghp.config matches 3 run function rpghp:xp_math_lvl

