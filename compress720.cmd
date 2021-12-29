for %%z in (*.mp4) do ( 
   ffmpeg -y -i "%%z" -threads 4 -vf scale="720:ceil(ow/a/2)*2" ".\mp4\%%z"
)
