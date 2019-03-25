WORKING_DIR=/home/son/proteus_work
BIN_FILE=lge.framework.ehorizon.ehorizonservice
TEST_FILE=lge.framework.ehorizon.ehorizonservice.test
LIB_FILE=libehorizon.so.1

sshpass -pjlr173 sftp -o StrictHostKeyChecking=no root@192.168.0.4 << COMMAND
cd /opt/bin
rm $BIN_FILE
put $WORKING_DIR/LGE/Release/framework/bin/$BIN_FILE 
cd /opt/test
rm $TEST_FILE
put $WORKING_DIR/LGE/Release/framework/test/$TEST_FILE
cd /opt/lib
rm $LIB_FILE
put $WORKING_DIR/LGE/Release/framework/lib/$LIB_FILE
bye
COMMAND

sshpass -pjlr173 ssh -o StrictHostKeyChecking=no root@192.168.0.4 << COMMAND
slay $BIN_FILE
slay $BIN_FILE

mount -uw /

chmod +x /opt/test/$TESTFILE && chmod +x /opt/bin/$BIN_FILE && sync
exit
COMMAND
