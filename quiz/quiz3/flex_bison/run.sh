if [ $# != 1 ];then
    echo "args not correct (req 1. your input: $# )"
    exit 1
fi

if [ $1 = "make" ];then
    echo "make"
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
