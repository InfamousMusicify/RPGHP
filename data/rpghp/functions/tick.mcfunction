# tick

# max base health
# attribute @s minecraft:generic.max_health base set 1024

schedule function rpghp:tick 1s


# store current base health (max hp)
execute as @a store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get
#execute as @a if score @s rpghp.hptrack > @s rpghp.hp store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get

# Main Functions
# login redundancies
execute as @a[scores={rpghp_log=1..}] run function rpghp:login

#exp_checker
execute unless score #exp_checker rpghp.config matches 0 as @a[scores={rpghp.xpcount=1..}] run function rpghp:xp_checker

# reset players health if it somehow drifts.  (death and other things can reset your hp, this is a redundancy)
execute as @a[scores={rpghp.respawn=21..}] unless score @s rpghp.hp = @s rpghp.hptrack run function rpghp:reset_health

# death
execute as @a[scores={rpghp.respawn=1..20}] run function rpghp:respawn

# admin set player health
#execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
execute as @a[scores={rpghp.hpch=1..}] unless score @s rpghp.hptrack = @s rpghp.hpch unless score @s rpghp.hpset matches 1.. run function rpghp:set_health_player

# admin set player health
#execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
execute as @a[scores={rpghp.hpset=1..}] unless score @s rpghp.hptrack = @s rpghp.hpset run function rpghp:set_health

# trigger - player stats and settings
scoreboard players enable @a rpghp
execute as @a unless score @s rpghp matches 0 run function rpghp:trigger
# # # 



# kill command toggles timers
scoreboard players add @a[scores={rpghp.hpchoose=1..}] rpghp.hpchoose 1
scoreboard players set @a[scores={rpghp.hpchoose=60..}] rpghp.hpchoose 0
