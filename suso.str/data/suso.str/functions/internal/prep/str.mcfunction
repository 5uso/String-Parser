execute store result score $prep_chars suso.str run data get storage suso.str:internal prep
data modify block ~1 ~1 ~ Text4 set value '{"nbt":"prep","storage":"suso.str:internal"}'
data modify storage suso.str:internal prep set from block ~1 ~1 ~ Text4