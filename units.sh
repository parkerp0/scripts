bytes=$1

if [ $bytes -lt 1024 ]
then
    echo "$bytes bytes"
    echo "$bytes bytes"
elif [ $bytes -lt 1048576 ]
then
    Kbytes=[$bytes/1000]
    Kibytes=[$bytes/1080]
    echo "$Kbytes kbytes"
    echo "$kilobytes Kibytes"
elif [ $bytes -lt 1073741824]
then
    Mbytes=[$bytes/1000000]
    Mibytes=[$bytes/1048576]
    echo "$Mbytes Mbytes"
    echo "$Mibytes Mibytes"
elif [ $bytes -lt 1099511627776 ]
then
    Gbytes=[$bytes/1000000000]
    Gibytes=[$bytes/1073741824]
    echo "$Gbytes Gbytes"
    echo "$Gibytes Gibytes"
elif [ $bytes -lt 1125899906842624 ]
then
    Tbytes=[$bytes/1000000000000]
    Tibytes=[$bytes/1099511627776]
    echo "$Tbytes Tbytes"
    echo "$Tibytes Tibytes"
else
    echo "Number too large"
fi