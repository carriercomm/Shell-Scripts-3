# Chmod All Files Within The Current Directory
#
# -Josh Pope
echo "CHMOD all files within current directory"

echo ""
read -p "### Enter the rights you want to give (777 or 755 are most common):" RGHTS

chmod $RGHTS "$( cd "$( dirname "$0" )" && pwd )"/*

echo "### CHMOD COMPLETE ###"
exit;