scoreboard players operation $half suso.str /= $2 suso.str

function suso.str:internal/try_char/move_half

data modify storage suso.str:internal current_char set from storage suso.str:internal possible_chars[0]
data modify block ~ ~1 ~ Text2 set value '[{"nbt":"prep","storage":"suso.str:internal"},{"nbt":"result","storage":"suso.str:internal","interpret":true},{"nbt":"current_char","storage":"suso.str:internal"}]'