# Shell script for cloning any github repo
#
# -Josh Pope
echo "Access and Clone any GitHub Repo"


read -p "### Enter the GitHub username containing the repo you're looking to clone:" USR
read -p "### Enter your repo name:" RESP
echo "### Note- your repository will clone into the current directory where this command file is located. (it will create a folder titled the same as your repo name)"

echo -ne '\033[31m#####                                                                   \r'
	sleep .5
	echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ###                             \r'
	sleep .5
	echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### \r\n'


cd "$( cd "$( dirname "$0" )" && pwd )"
git clone https://github.com/$USR/$RESP.git
