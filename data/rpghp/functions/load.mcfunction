# load


#util
scoreboard objectives add rpghp.config dummy
scoreboard objectives add rpghp_log minecraft.custom:minecraft.leave_game
scoreboard objectives add rpghp.respawn minecraft.custom:minecraft.time_since_death
scoreboard objectives add rpghp trigger

# player exp
# tracks player hearts
#scoreboard objectives add rpghp.hp health
scoreboard objectives add rpghp.hp dummy
scoreboard objectives add rpghp.hptrack dummy
scoreboard objectives add rpghp.hptrack2 dummy
scoreboard objectives add rpghp.hpset dummy
# subtract these number each time a player gets exp or looses exp.
# tracks exp points
scoreboard objectives add rpghp.xp dummy
# spare trcker for maths
scoreboard objectives add rpghp.xptrack dummy
# this number is the result of  - Needed exp is HP times variable set by admin below
scoreboard objectives add rpghp.xpmult dummy

# max-hp: 40
execute unless score #max_hp rpghp.config matches 0.. run scoreboard players set #max_hp rpghp.config 40
# starting-hp: 20
execute unless score #start_hp rpghp.config matches 0.. run scoreboard players set #start_hp rpghp.config 20
# needed-xp-is-hp-multiplied-by: 20
execute unless score #xpmult rpghp.config matches 0.. run scoreboard players set #xpmult rpghp.config 20
# xp-percentage-from-mobspawners: 20  ?what does this mean?
# xp-lost-on-death: 20
execute unless score #death rpghp.config matches 0.. unless score #death rpghp.config matches ..0 run scoreboard players set #death rpghp.config -20
execute unless score #player rpghp.config matches 0.. unless score #player rpghp.config matches ..0 run scoreboard players set #player rpghp.config 0
# xpmessages: true
execute unless score #rpghp.msg rpghp.config matches 0.. run scoreboard players set #rpghp.msg rpghp.config 0
# xpmessages-time: 40  ?what is this?

# login heal toggle -bug fix for larger amounts of health
execute unless score #login_heal rpghp.config matches 0.. run scoreboard players set #login_heal rpghp.config 0
execute unless score #respawn_heal rpghp.config matches 0.. run scoreboard players set #respawn_heal rpghp.config 0
# this doesnt need to be done, this is a tracker for player exp
#execute unless score #rpghp.xp rpghp.config matches 0.. run scoreboard players set #rpghp.xp rpghp.config 20

function rpghp:load_mobs

scoreboard players set #zero rpghp.config 0
scoreboard players set #neg1 rpghp.config -1

schedule clear function rpghp:tick



##### Notes:
# trigger
# rpghp = regen