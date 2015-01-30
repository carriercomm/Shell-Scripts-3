# Shell script for cloning any github repo
#
# *NOTE* - The best use of this command file is to place it in the root folder where all of your 
#	   git repos are cloned to. That way, you never have to manually clone a repo again. 
#	   Just run this file, enter the GitHub username and repo name, and a folder will be generated
#	   in the directory and populated with the cloned repo files. Tada!
#
# -Josh Pope
echo ""
echo "Access and Clone any GitHub Repo"


read -p "### Enter the GitHub username containing the repo you're looking to clone:" USR
read -p "### Enter your repo name:" RPONAME
echo "### Note- your repository will clone into the current directory where this command file is located. (it will create a folder titled the same as your repo name)"

echo -ne '\033[31m#####                                                                   \r'
	sleep .5
	echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ###                             \r'
	sleep .5
	echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### \r\n'


cd "$( cd "$( dirname "$0" )" && pwd )"
git clone https://github.com/$USR/$RPONAME.git

echo "### NEW GITHUB CLONE CREATED AT ""$( cd "$( dirname "$0" )" && pwd )"/$RPONAME
exit;
