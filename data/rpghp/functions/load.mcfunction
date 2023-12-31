# load


#util
scoreboard objectives add rpghp.config dummy
scoreboard objectives add rpghp_log minecraft.custom:minecraft.leave_game
scoreboard objectives add rpghp.respawn minecraft.custom:minecraft.time_since_death
# trigger
scoreboard objectives add rpghp trigger
scoreboard objectives add rpghp.rpghp dummy
# hp on or off - player
scoreboard objectives add rpghp.hpmod dummy
# hp set - player
scoreboard objectives add rpghp.hpchoose dummy
scoreboard objectives add rpghp.hpch dummy
# respawn heal - player
scoreboard objectives add rpghp.respheal dummy
#scoreboard objectives add rpghp.logheal dummy
#

# player exp
# tracks player hearts
#scoreboard objectives add rpghp.hp health
# main hp
scoreboard objectives add rpghp.hp dummy
# secondary hp
scoreboard objectives add rpghp.hptrack dummy
# maths hp (used to calc xpmult)
scoreboard objectives add rpghp.hptrack2 dummy
# admin set hp (gives instant hp)
scoreboard objectives add rpghp.hpset dummy
# max earned level storage
scoreboard objectives add rpghp.earnt_hp dummy
##### # actual hp (for login healing loop, which was cut. move to chains!)
##### scoreboard objectives add rpghp.hplvl health
##### # base hp tracker for math
##### scoreboard objectives add rpghp.hplvltrack dummy

# subtract these number each time a player gets exp or looses exp.
# tracks exp points
scoreboard objectives add rpghp.xp dummy
# per level tracker
scoreboard objectives add rpghp.xptrack dummy
# full xp counter
scoreboard objectives add rpghp.xpcount dummy
# recalc counter
scoreboard objectives add rpghp.xpcount2 dummy
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
# xp-percentage-from-mobspawners: 20  ?how does one even implement this?
# xp-lost-on-death: 20
execute unless score #death rpghp.config matches 0.. unless score #death rpghp.config matches ..0 run scoreboard players set #death rpghp.config -20
execute unless score #player rpghp.config matches 0.. unless score #player rpghp.config matches ..0 run scoreboard players set #player rpghp.config 0
# xpmessages: true  -might not do this becuase just why....
execute unless score #rpghp.msg rpghp.config matches 0.. run scoreboard players set #rpghp.msg rpghp.config 0
# xpmessages-time: 40  ?what is this?

# login heal toggle -bug fix for larger amounts of health
#execute unless score #login_heal rpghp.config matches 0.. run scoreboard players set #login_heal rpghp.config 0

# respawn heal toggle -bug fix for larger/smaller amounts of health
execute unless score #respawn_heal rpghp.config matches 0.. run scoreboard players set #respawn_heal rpghp.config 0
execute unless score #respawn_hurt rpghp.config matches 0.. run scoreboard players set #respawn_hurt rpghp.config 0
# hp change hurts below 20
##### execute unless score #hpchng_hurt rpghp.config matches 0.. run scoreboard players set #hpchng_hurt rpghp.config 0

# this doesnt need to be done, this is a tracker for player exp
#execute unless score #rpghp.xp rpghp.config matches 0.. run scoreboard players set #rpghp.xp rpghp.config 20
# admin hp apply toggle
execute unless score #rpghp.hpmod rpghp.config matches 0.. run scoreboard players set #rpghp.hpmod rpghp.config 0

# admin, login reset staller
execute unless score #login rpghp.config matches 0.. run scoreboard players set #login rpghp.config 0

function rpghp:load_mobs

function rpghp:load_exp_max
function rpghp:load_exp_base
####scoreboard players operation #base_exp rpghp.config -= #xpmult rpghp.config

scoreboard players set #zero rpghp.config 0
scoreboard players set #neg1 rpghp.config -1

schedule clear function rpghp:tick

# non-constants -add toggle for admin in front of this
execute unless score #exp_checker rpghp.config matches 0.. run scoreboard players set #exp_checker rpghp.config 0
execute unless score #xp_math rpghp.config matches 0.. run scoreboard players set #xp_math rpghp.config 1


#execute unless score #exp_checker rpghp.config matches 1.. run schedule function rpghp:tick_10s 10s


# LOAD TESTING        -turn off or delete laTER
#scoreboard objectives setdisplay sidebar rpghp.xpcount
#scoreboard objectives setdisplay sidebar rpghp.xpcount2
#scoreboard objectives setdisplay sidebar rpghp.xptrack
#scoreboard objectives setdisplay sidebar rpghp.hptrack
#scoreboard objectives setdisplay sidebar rpghp.hp

#scoreboard players set #exp_checker rpghp.config 1
#scoreboard players set #exp_checker rpghp.config 2
#scoreboard players set #exp_checker rpghp.config 3

#scoreboard players set #chicken rpghp.config 2000
#scoreboard players set #zombie rpghp.config 69
#scoreboard players set #pig rpghp.config -2
#scoreboard players set #cow rpghp.config -2000

#scoreboard players set @s rpghp.xpcount 0

##### Notes:
# trigger
# rpghp = regen

# use tags for admin controlled player permission nodes.  unless tag=rpghp.off
# players have perms by default unless admins take them away in newplayer, or after the fact, or with global toggles
# does it even make sense to try to do per plyer perm nodes?  i mean its easy to do but, like, the admin intervention is insane without a group manager...

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