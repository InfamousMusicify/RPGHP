# reset_health
say resethp



#execute if score @s rpghp.hptrack > @s rpghp.hp store result score @s rpghp.hp run


##### execute if score @s rpghp.hptrack < @s rpghp.hp run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
##### execute if score @s rpghp.hptrack > @s rpghp.hp run scoreboard players operation @s rpghp.hp = @s rpghp.hptrack


#scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
#scoreboard players operation @s rpghp.hp = @s rpghp.hptrack

##### function rpghp:health_array


# exp recalc points needed for current level
##### scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hptrack
##### execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config

###


execute if score @s rpghp.hptrack < @s rpghp.hp run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
execute if score @s rpghp.hptrack > @s rpghp.hp run scoreboard players operation @s rpghp.hp = @s rpghp.hptrack
##### scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
##### scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hp

function rpghp:health_array

# exp recalc points needed for current level
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config



#scoreboard players reset @s rpghp.hpset



#old
#execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
######################## scoreboard players set @s[scores={rpghp.hptrack=1025..}] rpghp.hptrack 1024
#scoreboard players operation @s rpghp.hptrack = @s rpghp.hp
#scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hp


#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
######################## function rpghp:health_array
#execute unless score #rpghp_rsp_heal rpghp.config matches 1.. as @s[scores={rpghp.hp=21..}] run effect give @s minecraft:instant_health 1 252
#effect give @s minecraft:instant_health 1 252

# reset xp to zero when forcibly leveled
#scoreboard players set @s rpghp.xp 0
# exp recalc points needed for current level
######################## execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config



