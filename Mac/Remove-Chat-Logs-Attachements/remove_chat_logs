#  This is just a simple shell script to remove
#  any iMessage logs that may be sitting around
#	-Josh Pope
(
  echo --- Searching for iMessage chat logs and attachments
  found_logs=''
  for file in ~/Library/Messages/* ; do
    if [[ -s "$file" ]] ; then
      found_logs=1
    fi
  done
  if [[ "$found_logs" ]] ; then
    for i in 1 2 3 4 5 6 
	do
   		echo ---
  		sleep .2
	done
  	echo --- Found iMessage Logs!
  	# just some basic user feedback here..
  	for i in 1 2 3
	do
   		echo ---
  		sleep .1
	done
	# Files have been found, prompt user to choose to delete or not
  	read -p "--- Are you sure want to delete iMessage logs, and any attachments (y/n)? " -n 1 -r
  	echo ""
  	echo ""
  	echo "- Finding chat.* files- deleting: "
  	# User chose to delete- lets delete that shit
  	rm -r ~/Library/Messages/chat.*
  	echo ""
  	echo "- Looking for attachments "
  	rm -r ~/Library/Messages/Attachments/*
	# now lets recurse through the attachments folder and delete everything
  	found_attach=''
	  for attach_file in ~/Library/Messages/Attachments/* ; do
	    if [[ -s "$attach_file" ]] ; then
	      found_attach=1
	    fi
	  done
	if [[ "$found_attach" ]] ; then
		echo "--- Found attachments, deleting them "
		rm -r ~/Library/Messages/Attachments/*
	fi
	echo ""
  	echo "- Finding any extra log files- deleting:"
    	rm -r ~/Library/Messages/*
  else
  	echo ""
	echo ""
    echo --- No iMessage logs exist on this computer!
    echo ""
	echo ""
  fi
)

# PROFIT
