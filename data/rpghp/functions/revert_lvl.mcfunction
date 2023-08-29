

# revert level
scoreboard players remove @s rpghp.hptrack 1
# flip negative xp to postive
scoreboard players operation @s rpghp.xp *= #neg1 rpghp.config

