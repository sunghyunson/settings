echo hi $1
echo "split the tar.gz file and cat_system.bat"
cd $1

TAR_FILE=`ls *.tar.gz`


split -n 7 $TAR_FILE ${TAR_FILE}_

rm $TAR_FILE

# make extract batch
echo "type ${TAR_FILE}_* > ${TAR_FILE}" > cat_system.bat
echo "tar xvfz $TAR_FILE" >> cat_system.bat
echo "IF %ERRORLEVEL% NEQ 0 exit" >> cat_system.bat
echo "del ${TAR_FILE}_*" >> cat_system.bat



