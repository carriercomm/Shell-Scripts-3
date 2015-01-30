# Shell script for editing $PATH 
#
# -Josh Pope

echo ''

### EDIT $PATH variable"
echo '### Edit the $PATH file, then press control-x to exit. Then Y to save.

Opening $PATH file'
for i in 1 2 3 4 5
	do echo -n "."
	sleep .15
done
sleep 2
sudo nano /etc/paths
