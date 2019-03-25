CURRENT_DIR=`pwd`

SOURCE_DIR=~/proteus_work


echo connectedservice
cd $SOURCE_DIR/LGE/ICCM/framework/connectedservice/ && git pull

echo QC/common
cd $SOURCE_DIR/QC/common/ && git pull

echo QC/modem_proc
cd $SOURCE_DIR/QC/modem_proc/ && git pull

echo QC/qnx_ap
cd $SOURCE_DIR/QC/qnx_ap/ && git pull

echo QC/trustzone_images
cd $SOURCE_DIR/QC/trustzone_images/ && git pull

cd $CURRENT_DIR
