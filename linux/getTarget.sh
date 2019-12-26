TODAY=`date +%y%m%d`

TARGET_PARENT="99.DailyBuild"
TARGET_DIR=""
GRADE="."

echo argments $#
if [ $# == 1 ]; then
        echo "Foler is $1"
        if [[ $1 == *EVENT* ]]
        then
                echo "EVENT data"
                TARGET_PARENT="98.EventBuild"
                TARGET_DIR=$1
                GRADE="HIGH"
        elif [[ $1 == *DAILY* ]]
        then
                echo "DAILY data"
                TARGET_DIR=$1
        else
                echo "!!~~~No DIR : $1"
                TODAY=$1
                echo "TARGET_DIR : P-IVI_DAILY_BUILD_${TODAY}"
                TARGET_DIR=P-IVI_DAILY_BUILD_${TODAY}
        fi

#       echo "Date is $1"
#       TODAY=$1
else
        echo "Today : ${TODAY}"
        echo "TARGET_DIR : P-IVI_DAILY_BUILD_${TODAY}"
        TARGET_DIR=P-IVI_DAILY_BUILD_${TODAY}
fi

#rm -rf ./target/*

#TARGET_DIR=daily_${TODAY}
mkdir -p ${TARGET_DIR}


smbclient -U sh.son%123456 '\\10.157.160.173\VC Smart P Task' << EOF
cd "${TARGET_PARENT}"
cd "${TARGET_DIR}"
cd ICCM
cd "${GRADE}"
cd target
cd package
cd nonmerkle
pwd
lcd ${TARGET_DIR}
prompt
#mget *.bat
recurse
#mget UFS_V10
pwd
mget L8*
get persist.img.sparse
#get lgeversion.txt
#cd ..
#cd db
#pwd
#get ivivendor.img.sparse
quit
EOF

./split.sh ${TARGET_DIR}




