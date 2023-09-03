# load


#util
scoreboard objectives add rpghp.config dummy
scoreboard objectives add rpghp_log minecraft.custom:minecraft.leave_game
scoreboard objectives add rpghp.respawn minecraft.custom:minecraft.time_since_death
# trigger
scoreboard objectives add rpghp trigger
scoreboard objectives add rpghp.rpghp dummy
scoreboard objectives add rpghp.hpmod dummy
scoreboard objectives add rpghp.hpchoose dummy
scoreboard objectives add rpghp.respheal dummy
scoreboard objectives add rpghp.logheal dummy
#

# player exp
# tracks player hearts
#scoreboard objectives add rpghp.hp health
scoreboard objectives add rpghp.hp dummy
scoreboard objectives add rpghp.hplvl health
scoreboard objectives add rpghp.hplvltrack dummy

scoreboard objectives add rpghp.hptrack dummy
scoreboard objectives add rpghp.hptrack2 dummy
scoreboard objectives add rpghp.hpset dummy
# subtract these number each time a player gets exp or looses exp.
# tracks exp points
scoreboard objectives add rpghp.xp dummy
# spare trcker for maths
scoreboard objectives add rpghp.xptrack dummy
# full xp counter
scoreboard objectives add rpghp.xpcount dummy
# this number is the result of  - Needed exp is HP times variable set by admin below
scoreboard objectives add rpghp.xpmult dummy

# max-hp: 40
execute unless score #max_hp rpghp.config matches 0.. run scoreboard players set #max_hp rpghp.config 40
# starting-hp: 20
execute unless score #start_hp rpghp.config matches 0.. run scoreboard players set #start_hp rpghp.config 20
# lowest hp: 20  - option for admins to toggle exp/hp loss at a certain level.
execute unless score #lowest_hp rpghp.config matches 0.. run scoreboard players set #lowest_hp rpghp.config 20
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
#execute unless score #login_heal rpghp.config matches 0.. run scoreboard players set #login_heal rpghp.config 0
execute unless score #respawn_heal rpghp.config matches 0.. run scoreboard players set #respawn_heal rpghp.config 0
# this doesnt need to be done, this is a tracker for player exp
#execute unless score #rpghp.xp rpghp.config matches 0.. run scoreboard players set #rpghp.xp rpghp.config 20

function rpghp:load_mobs
function rpghp:load_exp_max
function rpghp:load_exp_base

scoreboard players set #zero rpghp.config 0
scoreboard players set #neg1 rpghp.config -1

schedule clear function rpghp:tick
schedule clear function rpghp:tick_10s
# none constants -add toggle for admin in front of this
execute unless score #exp_checker rpghp.config matches 0.. run scoreboard players set #exp_checker rpghp.config 0
execute unless score #exp_checker rpghp.config matches 1.. run schedule function rpghp:tick_10s 10s


##### Notes:
# trigger
# rpghp = regen


# # Most recent debates
##### Port login healing to chains because thats the one that needs the bug fix.  apperently attribute modifiers just dont have this bug

# is exp checker vs level check tick needed?  


# # admin toggles
# pieces of the pack on and off
# done -respawn healing
# done -login healing
# -

# # admin things
# player permission nodes 
# -rpghp 
# -health_mod 
# -resp_heal 
####Removed because this was a cvhains bug not attrs# -log_heal 
# -health_choose -admin toggle for trigger for rpg servers and custom gamemodes
# -presets
# -


# # player choice?
# turn off health modify with a toggle cmd -unless admin turns on RP toggle? for servers or worlds with a specific mechanic or preset. un-turn-offable

# toggle login healing
# toggle respawn healing

# choose health level under earned level?  - this could add a painful layer of complex to the codebase.
# if you do this, please make sure to decide very thouroughly whether or not to use exp checker, as having checker running alongside this could add some pain.


# TODO:
# player choice:
# login healing
# respawn healing
# turn off extra health?  -debating this because this would negate some admin control-  also, what about loosing exp and therfore health?  shud i add an admin option to limit reverse exp?
#
#
#
# Admin options:
# Limit to reverse exp, #lowest_level ?  or i could use starting level? but would that be hardcoded on?  do i want to add an option to turn it off for servers that start with 1 heart or some madness? i think thatd be best for flexibilty in the long term.
#
#
#
# Exp System redo:
# currently stores current level info.  can leave that logic in place for more info to the player.  but... 
# Full system tracker: debates: where to put main calcs for max exp needed for max level?  load funcs?  presets?  if its not checked every "tick" it could potentially cause some missing exp or data
# Obvisously ill have one in the load funcs but, where else shud this happen?  is it woth every tick a recalc? is that even possible given the nature of this being a loop?
#
#
#
#
#
#