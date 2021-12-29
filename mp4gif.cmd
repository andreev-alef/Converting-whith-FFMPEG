for %%z in (*.mp4) do ( 
    set palette="palette.png"
    rem set filters="fps=20,scale=360:-1:flags=lanczos"
    set filters="fps=20,scale=480:-1:flags=lanczos"
    ffmpeg -i ^"%%z^" -vf ^"%filters%,palettegen^" -y %palette%
    ffmpeg -i ^"%%z^" -i %palette% -lavfi ^"%filters% [x]; [x][1:v] paletteuse^" -y "%%~nz.gif"
)
