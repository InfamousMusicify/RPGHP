

# revert level
scoreboard players remove @s rpghp.hptrack 1

#scoreboard players operation @s rpghp.xptrack = @s rpghp.xpmult
#scoreboard players operation @s rpghp.xptrack -= @s rpghp.xp

scoreboard players operation @s rpghp.xptrack = @s rpghp.xpmult
scoreboard players operation @s rpghp.xptrack += @s rpghp.xp

# flip negative xp to postive
#scoreboard players operation @s rpghp.xptrack *= #neg1 rpghp.config

