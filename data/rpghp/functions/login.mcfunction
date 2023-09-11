# chain:test1 (prereqs to Heal player at login)

######################
# only give hp to players who had full hp?  how in the fuck do you return hp to a player...  create a lopp seperate from this to give 1 0 instant health effct untill previous hp reached.
#execute unless score @s rpghp.hplvltrack = @s rpghp.hplvl run 



# store current hp (actual hp), if hp is higher than tracker
### execute if score @s rpghp.hplvltrack < @s rpghp.hplvl run scoreboard players operation @s rpghp.hplvltrack = @s rpghp.hplvl
######################


# login healing, unless admin off, unless player off, if score 21 and over
#execute unless score #login_heal rpghp.config matches 1.. unless score @s rpghp.logheal matches 1.. as @s[scores={rpghp.hptrack=21..}] run effect give @s minecraft:instant_health 1 252 true
#scoreboard players add @s rpghp.hptrack 0




# starting XP
#execute unless score @s rpghp.xpcount matches 0.. run scoreboard players operation @s rpghp.xpcount = #base_exp rpghp.config

scoreboard players enable @s rpghp

scoreboard players add @s rpghp.rpghp 0
scoreboard players add @s rpghp.hpmod 0
scoreboard players set @s rpghp.hpchoose 0
scoreboard players add @s rpghp.respheal 0


# Reset Logout Score for next login redundancy
scoreboard players set @s rpghp_log 0