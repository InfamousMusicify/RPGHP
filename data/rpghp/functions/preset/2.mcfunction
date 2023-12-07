# preset/2 - InHaus
# max-hp: 40
scoreboard players set #max_hp rpghp.config 40
# starting-hp: 20
scoreboard players set #start_hp rpghp.config 20
# lowest hp: 20  - option for admins to toggle exp/hp loss at a certain level.
scoreboard players set #lowest_hp rpghp.config 10
# needed-xp-is-hp-multiplied-by: 20
scoreboard players set #xpmult rpghp.config 20
# xp-percentage-from-mobspawners: 20  ?how does one even implement this?
# xp-lost-on-death: 20
scoreboard players set #death rpghp.config -20
# killed-player-exp
scoreboard players set #player rpghp.config 100
# xpmessages: true  -might not do this becuase just why....
scoreboard players set #rpghp.msg rpghp.config 1
# xpmessages-time: 40  ?what is this?

# respawn heal toggle -bug fix for larger/smaller amounts of health
scoreboard players set #respawn_heal rpghp.config 0
scoreboard players set #respawn_hurt rpghp.config 0
# admin health modifier toggle
scoreboard players set #rpghp.hpmod rpghp.config 0

# manually override these with tweaks below
function rpghp:load_mobs
function rpghp:load_exp_max
function rpghp:load_exp_base


### end / finals
scoreboard players set #zero rpghp.config 0
scoreboard players set #neg1 rpghp.config -1

# non-constants 
scoreboard players set #exp_checker rpghp.config 0
scoreboard players set #xp_math rpghp.config 1


