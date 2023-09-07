# exp_checker



#execute at @a run particle minecraft:ash ~ ~ ~ 1 1 1 1 1000 force




execute unless score #exp_checker rpghp.config matches 1.. run schedule function rpghp:tick_10s 5s

execute unless score #exp_checker rpghp.config matches 1.. as @a[scores={rpghp.xpcount=1..}] run function rpghp:exp_checker

# 


