# new_player_sethp




#execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
scoreboard players set @s[scores={rpghp.hpset=1025..}] rpghp.hpset 1024

#scoreboard players operation @s rpghp.hp = @s rpghp.hpset
scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
scoreboard players operation @s rpghp.hptrack2 = @s rpghp.hpset
#execute unless score @s rpghp.hptrack matches 20 run function rpghp:health_array
function rpghp:health_array
##### execute unless score @s rpghp.hptrack = @s rpghp.hp run function rpghp:health_array
#execute unless score #rpghp_rsp_heal rpghp.config matches 1.. as @s[scores={rpghp.hp=21..}] run effect give @s minecraft:instant_health 1 252
effect give @s minecraft:instant_health 1 252 true

# exp recalc points needed for current level
execute store result score @s rpghp.xpmult run scoreboard players operation @s rpghp.hptrack2 *= #xpmult rpghp.config
scoreboard players set @s rpghp.hpset 0