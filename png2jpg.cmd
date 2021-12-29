for %%z in (*.png) do ( 
    ffmpeg -i "%%z" -threads 4 -y "%%~nz.jpg"
)