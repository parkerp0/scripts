#linux script that takes in any number of files or directories as arguments and prints out the name of each file or directory, if it is a file then print it's size in bytes after it's name. if it is not a file or a directory skip it

# read in arguments from command line
for arg in $@
do
    # check if argument is a file
    if [ -f $arg ]
    then
        # print file size in bytes
        echo $(stat -c%s $arg) $arg 
    # check if argument is a directory
    elif [ -d $arg ]
    then
        # print directory name
        echo  / $arg
    fi
done