data modify storage suso.str:internal current_char set from storage suso.str:internal possible_chars[0]
data modify storage suso.str:internal result append from storage suso.str:internal current_char
#tellraw @a [{"text":"Got char \""},{"nbt":"current_char","storage":"suso.str:internal"},"\""]

data modify storage suso.str:internal possible_chars set from storage suso.str:internal possible_chars_set
execute if score $get suso.str matches 1.. run function suso.str:internal/try_char/head
data modify storage suso.str:internal possible_chars2 set value []

data modify block ~ ~1 ~ Text2 set value '[{"nbt":"prep","storage":"suso.str:internal","interpret":true},{"nbt":"result[]","storage":"suso.str:internal","separator":""},"￿"]'
scoreboard players set $got suso.str 1
scoreboard players add $curr_chars suso.str 1