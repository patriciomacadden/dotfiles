for file in `find ~/.bash/* -type f -maxdepth 0`; do
  source $file
done
