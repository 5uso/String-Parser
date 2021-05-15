#tellraw @a "STATE 0"

data modify entity 00000000-0000-0226-0000-000000000001 Tags set value ["a", "b", "c"]
data modify block ~1 ~ ~ Command set value "tag 00000000-0000-0226-0000-000000000001 list"

scoreboard players set $state suso.str 1