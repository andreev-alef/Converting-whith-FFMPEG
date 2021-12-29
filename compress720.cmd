for %%z in (*.mp4) do ( 
   ffmpeg -y -i "%%z" -vf scale=720:406 "%%z"
)