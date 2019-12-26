if [ $# == 0 ]; then
	echo "date please ex:1223"
	exit;
fi

SERVER_PATH="/data001/vc.integrator/temp/99.DailyBuild"
SERVER_PATH=$SERVER_PATH/$1/ICCM/framework
echo "server path : $SERVER_PATH "

DEST_PATH="/data001/sh.son/nas/abi_check/$1"
echo "dest path : $DEST_PATH "

mkdir -p $DEST_PATH

cp $SERVER_PATH/lib/libeb.so* $DEST_PATH
cp $SERVER_PATH/lib/libehorizon.so* $DEST_PATH
cp $SERVER_PATH/lib/libdlt.so* $DEST_PATH
cp $SERVER_PATH/lib/libivi-logging.so* $DEST_PATH
cp $SERVER_PATH/lib/libnaviwsys.so* $DEST_PATH
cp $SERVER_PATH/lib/libnavi.so* $DEST_PATH

cp $SERVER_PATH/QNX/lib/libsocket.so* $DEST_PATH
cp $SERVER_PATH/QNX/lib/libm.so* $DEST_PATH
cp $SERVER_PATH/QNX/lib/libc.so* $DEST_PATH
cp $SERVER_PATH/QNX/lib/libslog2.so* $DEST_PATH
cp $SERVER_PATH/QNX/lib/libpps.so* $DEST_PATH
cp $SERVER_PATH/QNX/lib/libasound.so* $DEST_PATH

cp $SERVER_PATH/QNX/usr/lib/libc++.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libstringsa64.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libmq.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libcurl.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libbacktrace.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libcares.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libssl.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libz.so* $DEST_PATH
cp $SERVER_PATH/QNX/usr/lib/libcrypto.so* $DEST_PATH


