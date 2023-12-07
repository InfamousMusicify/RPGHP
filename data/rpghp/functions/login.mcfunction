# login (prereqs to Heal player at login)



##### score activators and redundancies ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
scoreboard players enable @s rpghp

scoreboard players add @s rpghp.rpghp 0
# what is this?
scoreboard players add @s rpghp.hpmod 0
scoreboard players set @s rpghp.hpchoose 0
# player healing choice
scoreboard players add @s rpghp.respheal 0


##### Starting Scores redundancy ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
#execute unless score @s rpghp.earnt_hp matches 1.. run scoreboard players operation @s rpghp.earnt_hp = #start_hp rpghp.config
# starting XP
#execute unless score @s rpghp.xpcount matches 0.. run scoreboard players operation @s rpghp.xpcount = #base_exp rpghp.config
# proper health setter
#execute unless score @s rpghp.hp matches 1.. unless score @s rpghp.hptrack matches 1.. run function rpghp:new_player_sethp


##OG  execute unless score @s rpghp.hp matches 1.. run function rpghp:new_player
# new
#execute unless admin disabled, unless hpset is set
execute unless score #login rpghp.config matches 1.. unless score @s rpghp.hpset matches 1.. run function rpghp:new_player
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 


##### end ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# Reset Logout Score for next login redundancy
scoreboard players set @s rpghp_log 0











######################  Old and off
# only give hp to players who had full hp?  how in the fuck do you return hp to a player...  create a lopp seperate from this to give 1 0 instant health effct untill previous hp reached.
#execute unless score @s rpghp.hplvltrack = @s rpghp.hplvl run 

# store current hp (actual hp), if hp is higher than tracker  -old and off
### execute if score @s rpghp.hplvltrack < @s rpghp.hplvl run scoreboard players operation @s rpghp.hplvltrack = @s rpghp.hplvl
######################

# login healing, unless admin off, unless player off, if score 21 and over  -not needed, old and off
#execute unless score #login_heal rpghp.config matches 1.. unless score @s rpghp.logheal matches 1.. as @s[scores={rpghp.hptrack=21..}] run effect give @s minecraft:instant_health 1 252 true
#scoreboard players add @s rpghp.hptrack 0