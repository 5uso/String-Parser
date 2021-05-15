scoreboard players set $got suso.str 0
execute store result score $half suso.str run data get storage suso.str:internal possible_chars
execute if score $half suso.str matches 2.. run function suso.str:internal/try_char/pt2
execute if score $half suso.str matches 1 run function suso.str:internal/try_char/got

#tellraw @a [{"text":"Trying string \""},{"block":"~ ~1 ~","nbt":"Text2","interpret":true},"\""]