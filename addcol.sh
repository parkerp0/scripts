# a bash script that reads in a csv from stdin and adds a column to the end of the csv then returns it to stdout
# the first row is a column header
# the scrupt takes in one argument which will be the header of the new column
# the first cololmn contains file names
# in each file check for lines matching the pattern Item = value, where Item is the name of the command line argument and value is the value of the new column added to that row
# if there is no match then the value of the new column is empty

# read in arguments from command line
arg=$1
# read in csv from stdin
while read line
do
    # check if line is a header
    if [ $line == ?Key,]
    then
        # print header with new column
        echo "$line,$arg"
    else
        # get file name from line
        file=$(echo $line | cut -d ',' -f 7)
        # check if file exists
        if [ -f $file ]
        then
            # get value of new column
            value=$(grep -o "$arg = [0-9]*" $file | cut -d ' ' -f 3)
            # check if value is empty
            if [ -z $value ]
            then
                # print line with empty new column
                echo "$line,"
            else
                # print line with new column
                echo "$line,$value"
            fi
        else
            # print line with empty new column
            echo "$line,"
        fi
    fi
done