TODAY=`date +%y%m%d`
echo argments $#
if [ $# == 1 ]; then
	echo "Date is $1"
	TODAY=$1
else
	echo "Today : ${TODAY}"
fi

rm -rf ./target/*



smbclient -U sh.son%123456 '\\10.157.160.173\VC Smart P Task' << EOF
cd "99.DailyBuild"
cd "P-IVI_DAILY_BUILD_${TODAY}"
cd ICCM
cd target
pwd
lcd target
prompt
mget *.bat
recurse
mget UFS_V10
mget LPLA*
pwd
quit
EOF
