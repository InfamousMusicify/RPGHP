# chain:test1 (prereqs to Heal player at login)

# login healing, unless admin off, unless player off, if score 21 and over
execute unless score #login_heal rpghp.config matches 1.. as @s[scores={rpghp.hptrack=21..}] run effect give @s minecraft:instant_health 1 252

# Reset Logout Score for next login redundancy
scoreboard players set @s rpghp_log 0