# Shell script editing hosts file.
#
# -Josh Pope

echo "

### EDIT HOSTS FILE"
echo '### Edit the hosts file, the press control-x to exit. Then Y to save.

Opening hosts file'
for i in 1 2 3 4 5
	do echo -n "."
	sleep .2
done
sleep 3
sudo nano /private/etc/hosts
