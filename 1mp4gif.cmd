set palette="palette.png"
set filters="fps=20,scale=360:-1:flags=lanczos"
rem set filters="fps=20,scale=480:-1:flags=lanczos"
ffmpeg -i ^"%1^" -vf ^"%filters%,palettegen^" -y %palette%
ffmpeg -i ^"%1^" -i %palette% "-lavfi" ^"%filters% [x]; [x][1:v] paletteuse^" -threads 4 -y "%~n1.gif"