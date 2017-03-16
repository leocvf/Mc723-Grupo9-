./configure
cp 16k.jpg result.jpg
perf stat -d -r 6 gm mogrify -contrast -contrast -contrast -contrast -contrast result.jpg
