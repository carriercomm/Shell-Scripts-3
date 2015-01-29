
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  »»»  This is just a simple shell script to remove
#       any iMessage logs that may be sitting around
#       -Josh Pope
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(

#!/bin/sh

    OLD_IFS="$IFS"
    IFS=
    NAME[0]="      ___    a shell script by   ___           ___    "
    NAME[1]="     /  /\        /  /\         /  /\         /__/\    "
    NAME[2]="    /  /:/       /  /::\       /  /:/_        \  \:\   "
    NAME[3]="   /__/::\      /  /:/\:\     /  /:/ /\        \__\:\  "
    NAME[4]="   \__\/\:\    /  /:/  \:\   /  /:/ /::\   ___ /  /::\  "
    NAME[5]="      \  \:\  /__/:/ \__\:\ /__/:/ /:/\:\ /__/\  /:/\:\ "
    NAME[6]="       \__\:\ \  \:\ /  /:/ \  \:\/:/~/:/ \  \:\/:/__\/ "
    NAME[7]="       /  /:/  \  \:\  /:/   \  \::/ /:/   \  \::/     "
    NAME[8]="      /__/:/    \  \:\/:/     \__\/ /:/     \  \:\     "
    NAME[9]="      \__\/      \  \::/        /__/:/       \  \:\    "
    NAME[10]="                  \__\/         \__\/         \__\/    "
    NAME[11]="        ___         ___           ___         ___     "
    NAME[12]="       /  /\       /  /\         /  /\       /  /\    "
    NAME[13]="      /  /::\     /  /::\       /  /::\     /  /:/_   "
    NAME[14]="     /  /:/\:\   /  /:/\:\     /  /:/\:\   /  /:/ /\  "
    NAME[15]="    /  /:/~/:/  /  /:/  \:\   /  /:/~/:/  /  /:/ /:/_ "
    NAME[16]="   /__/:/ /:/  /__/:/ \__\:\ /__/:/ /:/  /__/:/ /:/ /\ "
    NAME[17]="   \  \:\/:/   \  \:\ /  /:/ \  \:\/:/   \  \:\/:/ /:/"
    NAME[18]="    \  \::/     \  \:\  /:/   \  \::/     \  \::/ /:/ "
    NAME[19]="     \  \:\      \  \:\/:/     \  \:\      \  \:\/:/  "
    NAME[20]="      \__\/       \__\/         \__\/       \__\/   "
    NAME[21]="           
                               ~~~~~~~~~~~~~~"
      NAME[22]="    ____ ____ ____ ____ ____ _________ ____ ____ ____ "
      NAME[23]="   ||e |||r |||a |||s |||e |||       |||i |||O |||S ||"
      NAME[24]="   ||__|||__|||__|||__|||__|||_______|||__|||__|||__||"
      NAME[25]="   |/__\|/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|"
      NAME[26]="    ____ ____ ____ ____ _________ ____ ____ ____ ____ "
      NAME[27]="   ||c |||h |||a |||t |||       |||l |||o |||g |||s ||"
      NAME[28]="   ||__|||__|||__|||__|||_______|||__|||__|||__|||__||"
      NAME[29]="   |/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|"
NAME[30]=" "
NAME[31]=" "
    NAME[32]="        iMessage log eliminator for OSX. Target and  "
    NAME[33]="          removes all iOS and MacOs iMessage logs."
    NAME[34]="            v1 Josh Pope joshpopenyc@gmail.com"
    for i in "${NAME[@]}"
    do
       :
       echo "     "$i
       sleep .02 
    done
    
    echo ""
    # state boolean var, triggers true if message logs are found in either iMessage log storage locations use in MacOS
    found_logs=''
    echo -e "\033[31m -------  Searching for all iMessage logs and attachments   --------"

    # check the user library messages folder, which will contain all iMessage logs from MacOS 
    for file in ~/Library/Messages/* ; do
    if [[ -s "$file" ]] ; then
      found_logs=1
    fi
    done
    # Done searching primary iMessage log folder

    # check the iOS messages archive folder, which will contain all iMessage logs from iOS saved in MacOS format
    for file2 in ~/Library/Containers/com.apple.iChat/Data/Library/Messages/* ; do
    if [[ -s "$file2" ]] ; then
       found_logs=1
    fi
    done
    # Done searching iOS iMessage log folder
    # if logs were found, print user feedback to let them know and choose to delete them or not
    if [[ "$found_logs" ]]  ; then
    echo -e "\n\n"
    echo -ne '\033[31m#####                                                                   (33%)\r'
        sleep 1
        echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ###                             (66%)\r'
        sleep 1
        echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### (100%)\r\n'
        echo -ne '\n'
    echo -e "\033[31m                        Found iMessage Logs!"
  
    # User response- if logs are found, this message displays an option to delete them or to stop application now before anything is removed
    echo -e "\033[33m "
    echo -e '\033[33m#############################################################################'
    read -p "### Are you sure want to delete iMessage logs, and any attachments (y/n)? ###
#############################################################################
(type y or n): " RESP
    

  # User chose to delete, start deleting processes
    if [ "$RESP" = "y" ]; then
    for i in 1 2
        do echo ""
    done

    # Deleting iMessage chat logs
    echo -e "\033[32m    Finding chat logs and deleting them"
    echo -ne '\033[31m#####                                                                   (33%)\r'
        sleep 1
        echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ###                             (66%)\r'
        sleep 1
        echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### (100%)\r\n'
        echo -ne '\n'
    for file in ~/Library/Messages/chat.* ; do
      echo ""
      if [[ -s "$file" ]] ; then
        chmod -R 777 ~/Library/Messages/chat.*
        rm -r ~/Library/Messages/chat.*
      fi
    echo -e "\033[31m -- Deleting one found log file --"
    echo ""
    done

    # make double sure there is no possibility that any files exist in the log file location.. delete everything in it. (this causes no harm)
    echo -e "\033[32m    Removing all log files that may have been missed"; 
    for file in ~/Library/Messages/* ; do
      echo " ";
      if [[ -s "$file" ]] ; then
        chmod -R 777 ~/Library/Messages/*
        rm -rf ~/Library/Messages/*
      fi
    echo -e "\033[31m -- Deleting one found log file --"
    echo ""
    done

    # Let the user know we're now searching for iOS logs
    echo -e "\033[32m    Searching for iOS device iMesssage log archives "

    echo " ";
    # Start deleting logs and attachments for iOS iMessage logs
    for file in ~/Library/Containers/com.apple.iChat/Data/Library/Messages/Archive/* ; do 
    rm -R ~/Library/Containers/com.apple.iChat/Data/Library/Messages/Archive
	done   
    for file in ~/Library/Containers/com.apple.iChat/Data/Library/Messages/* ; do 
      if [[ -s "$file" ]] ; then
        echo "    Removing iOS iMessage archive"; echo " ";
        chmod -R 777 ~/Library/Containers/com.apple.iChat/Data/Library/Messages/*
        rm -rf ~/Library/Containers/com.apple.iChat/Data/Library/Messages/*
      fi
      echo -e "\033[31m -- Deleting one found log file --"
      echo ""
    done
    echo -e "\033[32m    Searching for any leftover log files that may be present\n"
    # recurse through attachments, if they exist, and delete them
   
    # Delete iOS attachments process
    echo -e "\033[32m    Looking for attachments\n"

    found_attach_2=''
  for attach_file in ~/Library/Messages/Attachments/* ; do
      if [[ -s "$found_attach_2" ]] ; then
        found_attach_2=1
      fi
         echo -e "\033[31m -- Deleting one found log file --"
        echo -e "\033[0m "
  done

  if [[ "$found_attach_2" ]] ; then
    echo -e "\n     Removing all attachments\n\n";
    rm -r ~/Library/Messages/Attachments/*
  fi
   echo -e "\033[33m "
   echo -e "\033[33m##########################################################################"
    read -p "####### All logs and attachments have been removed. Are you done? #######
(Close this app, continue using terminal(y), or close app and terminal(n))?
##########################################################################
(type y or n): " RESP
  # User chooses to close window
    echo -e "\n"
    if [ "$RESP" = "y" ]; then
        echo -ne '\033[31m#####                                                                   (33%)\r'
        sleep 1
        echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ###                             (66%)\r'
        sleep 1
        echo -ne '\033[31m### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### (100%)\r\n'
        echo -ne '\n'
        echo -e "\033[33m### ### ##  All files deleted $(date +"%m-%d-%Y at %r")  ## ### ### ###\n"
        
        for i in 1 2 
          do
          echo "### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###"
          sleep .1
        done  
        echo -e "\n### ### ### ### #   Preparing to Close Process    # ### ### ### ### ###"
        IFS='%'
        for (( i = 22 ; i < ${#NAME[@]} ; i++ )) do
             echo "     "${NAME[$i]}
             sleep .02 
        done
   
      sleep 3
      pwd=`pwd`
      osascript -e "tell application \"Terminal\"" \
          -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
          -e "do script \"cd $pwd; clear\" in front window" \
          -e "end tell"
          > /dev/null
  else
      echo "### ### ### ### ###  Thank you!  - joshpopenyc@gmail.com ### ### ### ### ###"
      echo "### ### ### ### ### ###  Give us one second here...  ### ### ### ### ### ###"
      for i in 1 2 3 4
          do
          echo -e "\033[31m -"
          sleep .65
        done 
      IFS='%'
    for (( i = 22 ; i < ${#NAME[@]} ; i++ )) do
    
         echo "     "${NAME[$i]}
         sleep .02 
      done
      
      sleep .3
      for i in 1 2 3 
        do
        echo "### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###"
        sleep .1
      done  
      echo "### ### ### ### ###   Your window is closing shortly   ### ### ### ### ###"
      echo -e "### ### ### ### #  You chose not to continue. Aborting. ## ### ### ###\n\n"
      sleep 3.2
      disown
      KillAll Terminal
    
      exit
     # done
    fi
    else    
      echo "### ### ### ### ###  Thank you!  - joshpopenyc@gmail.com ### ### ### ### ###"
      var q = 22
      IFS='%'
    for (( i = 22 ; i < ${#NAME[@]} ; i++ )) do
         echo "     "${NAME[$i]}
         sleep .02 
      done
      
      sleep .3
      for i in 1 2 3 
        do
        echo "### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###"
        sleep .15
      done  
      echo "### ### ### ### ### # You chose not to continue.. Ok. # ### ### ### ### ### "
      echo -e "### ### ### ### ###   Your window is closing shortly    ### ### ### ### ###\n"
      
      sleep 2.5
      disown
      KillAll Terminal
      exit
    fi
    else
    echo ""
    echo "### ### ### ###  Thank you!  - joshpopenyc@gmail.com  ### ### ### ###"
    sleep .3
    for i in 1 2 3 
        do
        echo "### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###"
        sleep .15
    done  
    echo -e "\n\n-----------  No iMessage logs exist on this computer   --------------"
    sleep .6
    echo -e "\n### ### ### ###  Your window is closing shortly   ### ### ### ### ###"
    IFS='%'
    for (( i = 22 ; i < ${#NAME[@]} ; i++ )) do

         echo "     "${NAME[$i]}
         sleep .02 
      done
      
    sleep 2.5
    KillAll Terminal
    exit
  fi

)
