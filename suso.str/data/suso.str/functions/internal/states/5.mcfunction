#tellraw @a "STATE 5"

#tellraw @p {"nbt":"LastOutput","block":"~1 ~ ~","interpret":true}
data modify storage suso.str:internal flattened_tag_list set from block ~1 ~ ~ LastOutput
data modify block ~ ~1 ~ Text1 set value '[{"nbt":"tags_start","storage":"suso.str:internal","interpret":true},{"text":", "},{"nbt":"flattened_in","storage":"suso.str:internal"},{"text":", "},{"nbt":"flattened_cmp","storage":"suso.str:internal"}]'
data modify entity 00000000-0000-0226-0000-000000000000 CustomName set from block ~ ~1 ~ Text1

scoreboard players set $state suso.str 6