# login_heal
#say lg hela
#scoreboard players set @s rpghp.config 1


#effect give @s minecraft:instant_health 1 0 true
#execute as @a if score @s rpghp.hplvltrack < @s rpghp.hplvl run effect give @s minecraft:instant_health 1 0 true
execute as @a unless score @s rpghp.hplvltrack < @s rpghp.hplvl run effect give @s minecraft:instant_health 1 0 true
# store current hp (actual hp), if hp is higher than tracker
execute as @a unless score @s rpghp.hplvltrack < @s rpghp.hplvl run scoreboard players operation @s rpghp.hplvltrack = @s rpghp.hplvl
# loop if hp still under logout score
#execute unless score @s rpghp.hplvltrack < @s rpghp.hplvl run function rpghp:login_heal
execute as @a if score @s rpghp.hplvltrack < @s rpghp.hplvl run schedule function rpghp:login_heal 1t


# tick
#Port to chains -store current hp (actual hp), if hp is higher than tracker
execute unless score @s rpghp.hplvltrack < @s rpghp.hplvl run scoreboard players operation @s rpghp.hplvltrack = @s rpghp.hplvl

# login
###works but did mojang friggin fix this...?#off# 
execute unless score @s rpghp.hplvltrack < @s rpghp.hplvl run function rpghp:login_heal


####Removed because this was a cvhains bug not attrs# -log_heal 