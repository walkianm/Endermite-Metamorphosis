# Endermite attempts to infest the block to the south of it
setblock ~ ~ ~1 air
tp @e[type=minecraft:endermite,limit=1,distance=...1] ~ -50 ~
execute align xyz run summon shulker ~0.5 ~ ~1.5 {Color:16}
