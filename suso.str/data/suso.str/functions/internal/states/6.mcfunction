#tellraw @a "STATE 6"

#tellraw @p {"nbt":"LastOutput","block":"~1 ~ ~","interpret":true}
execute store success score $temp suso.str run data modify storage suso.str:internal flattened_tag_list set from block ~1 ~ ~ LastOutput

execute if score $temp suso.str matches 1 run function suso.str:internal/states/6-1
execute if score $temp suso.str matches 0 run function suso.str:internal/states/6-2

scoreboard players set $state suso.str 7