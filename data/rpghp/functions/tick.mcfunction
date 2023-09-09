# rpghp:tick

# max base health
# attribute @s minecraft:generic.max_health base set 1024

schedule function rpghp:tick 1s
# store current base health (max hp)
execute as @a store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get
#execute as @a if score @s rpghp.hptrack > @s rpghp.hp store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get


# Main Functions
# login redundancies
execute as @a[scores={rpghp_log=1..}] run function rpghp:login


# admin set player health
#execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
execute as @a[scores={rpghp.hpset=1..}] run function rpghp:set_health




# reset players health if it somehow drifts.  (death and other things can reset your hp, this is a redundancy)
#execute as @a[scores={rpghp.hptrack=1..}] run function rpghp:reset_health
#execute as @a[scores={rpghp.hptrack=1..}] unless score @s rpghp.hp = @s rpghp.hptrack run function rpghp:reset_health
#execute as @a unless score @s[scores={rpghp.respawn=21..}] rpghp.hp = @s rpghp.hptrack run function rpghp:reset_health
execute as @a[scores={rpghp.respawn=21..}] unless score @s rpghp.hp = @s rpghp.hptrack run function rpghp:reset_health


# death
execute as @a[scores={rpghp.respawn=1..20}] run function rpghp:respawn

# store base health to tracker   -must move out of tick might be able to move this out of tick into respawn and or killing adv stuff
#execute as @a store result score @s rpghp.hptrack run attribute @s minecraft:generic.max_health base get
##### execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp


# redundancy loop for getting multiple levels of exp at once
#execute as @a if score @s rpghp.xp > @s rpghp.xpmult run function rpghp:xp_math


# check exp vs level and recalc
execute unless score #exp_checker rpghp.config matches 1.. as @a[scores={rpghp.xpcount=1..}] run function rpghp:exp_checker

#execute as @a[scores={rpghp.health=0,rpghp.count=1..}] unless score @s rpghp.config matches 3 run function rpghp:regen

# trigger - toggle healing
scoreboard players enable @a rpghp
#execute unless score #rpghp_heal rpghp.config matches 1.. run scoreboard players enable @a rpghp

#execute as @a[scores={rpghp=1..}] run function rpghp:trigger
#execute unless score #rpghp_heal rpghp.config matches 1.. as @a unless score @s rpghp matches 0 unless score @s rpghp matches 2 run function rpghp:trigger
#execute as @a unless score @s rpghp matches 0 run function rpghp:trigger
execute as @a unless score @s rpghp matches 0 run function rpghp:trigger
# # # 
