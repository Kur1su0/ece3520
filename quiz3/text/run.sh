if [ $1 = "run" ];then
    echo "run"
    bison -d abcde.y
    flex hello.in
    gcc test.c -lfl -o test
    exit 0
fi
if [ $1 = "clean" ];then
    echo "clean"
    
    rm -v *.yy.*
    rm -v *.tab.*
    rm -v test
    exit 0

fi

echo "do nothing..exit"
