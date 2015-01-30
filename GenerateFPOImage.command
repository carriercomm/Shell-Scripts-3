# Shell script for generating an FPO image with specified dimensions and text
#
# -Josh Pope
#!/bin/bash
echo ""
echo "Create FPO Image for Development use"


read -p "### Width: " WDTH
read -p "### Height: " HGHT
read -p "### What text would you like displayed on the FPO image? " USRTXT

echo "### Got it.. Give me a sec here.."
echo "
"
#Got the user input.. Lets regex those spaces into %20
text_string=${USRTXT//' '/"%20"}

echo "Image Created! It has been copied to your clipboard.
      NOTE: Command-V (paste) it wherever it is needed"
# Copy the link to the clipboard

echo "http://fpoimg.com/"$WDTH"x"$HGHT"?text="$text_string | pbcopy
echo ""
echo "Your FPO Image Link: http://fpoimg.com/"$WDTH"x"$HGHT"?text="$text_string
echo ""

# some terminal clients will automatically close the window after running this script
# so lets reset the bin/bash to prevent that
/bin/bash
