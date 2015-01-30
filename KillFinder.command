# Shell script for restarting finder 
#
# -Josh Pope


killall -KILL Finder;
echo -ne "Restarting Finder\n\n 	"

for i in 1 2 3 4 5
	do echo -n "."
	sleep .2
done
echo -e '\n '
exit;
