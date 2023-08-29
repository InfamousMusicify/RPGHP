# rpghp:tick

# max base health
# attribute @s minecraft:generic.max_health base set 1024

schedule function rpghp:tick 1s
execute as @a store result score @s rpghp.hp run attribute @s minecraft:generic.max_health base get
# Main Functions
# login redundancies
execute as @a[scores={rpghp_log=1..}] run function rpghp:login

# admin set player health
#execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hpset
execute as @a[scores={rpghp.hpset=1..}] run function rpghp:set_health

#execute as @a[scores={rpghp.hptrack=1..}] run function rpghp:reset_health
execute as @a[scores={rpghp.hptrack=1..}] unless score @s rpghp.hp = @s rpghp.hptrack run function rpghp:reset_health

# store base health to tracker   -must move out of tick might be able to move this out of tick into respawn and or killing adv stuff
#execute as @a store result score @s rpghp.hptrack run attribute @s minecraft:generic.max_health base get
##### execute as @a unless score @s rpghp.hp < @s rpghp.hptrack run scoreboard players operation @s rpghp.hptrack = @s rpghp.hp


# redundancy loop for getting multiple levels of exp at once
#execute as @a if score @s rpghp.xp > @s rpghp.xpmult run function rpghp:xp_math

# Find a way to implement a near death detector?  about to die detector?  low health and took damage detector?  Amount of damage taken detector? < this seems best but how on earth...  and can you stop a death in vanilla?
# does fall damage cut thru everything because of the order of serverside or client side maths?  does a datapack run in time to save you?
execute as @a[scores={rpghp.respawn=1..20}] run function rpghp:respawn

#execute as @a[scores={rpghp.health=0,rpghp.count=1..}] unless score @s rpghp.config matches 3 run function rpghp:regen

# trigger - toggle healing
scoreboard players enable @a rpghp
#execute unless score #rpghp_heal rpghp.config matches 1.. run scoreboard players enable @a rpghp

#execute as @a[scores={rpghp=1..}] run function rpghp:trigger
#execute unless score #rpghp_heal rpghp.config matches 1.. as @a unless score @s rpghp matches 0 unless score @s rpghp matches 2 run function rpghp:trigger
#execute as @a unless score @s rpghp matches 0 run function rpghp:trigger
execute as @a unless score @s rpghp matches 0 unless score @s rpghp matches 3 run function rpghp:trigger
# # # 
