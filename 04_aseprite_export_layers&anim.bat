# Separate arguments for the for-loop using newlines instead
# of all kind of whitespaces, which is the output of -list-layers
IFS=$'\n'

 for /F "delims= " %%G in ('Aseprite -b --list-layers char_idle.aseprite') DO (
     Aseprite -b --layer "%%G" "char_idle.aseprite" --sheet "export/Male/%%G.png"
)

 for /F "delims= " %%G in ('Aseprite -b --list-layers char_w.aseprite') DO (
     Aseprite -b --layer "%%G" "char_w.aseprite" --sheet "export/Female/%%G.png"
)

pause