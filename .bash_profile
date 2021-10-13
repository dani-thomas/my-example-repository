echo "Welcome to the bash terminal!"
echo "Here are some useful alias and functions to use."
echo "- GotoDesktop : (alias) takes you to the desktop" 
echo "- renameFolder: (Function), takes 2 params to rename a folder. E.g. renameFolder someFolder someNewName"
#Alias 
alias GotoDesktop="cd ~/Desktop && echo ' You are now in the Desktop Directory.'"
#Function

function renameFolder() {
  echo "Attempting to rename $1 to $2."
  if [ ! -d "$1" ]
  then
    echo "Directory $1 DOES NOT exists."
  else
    if [ -d "$2" ]
    then
        echo "Directory $2 DOES exists, can't rename to existing folder."
    else
        eval "mkdir $2 &&
            cp -v $1/* $2 &&
            rm -Rf $1/* &&
            rmdir $1 &&
            echo '$1 Renamed successfully to $2.'"

    fi
  fi
}
