goRoot () {
	cd /data001/sh.son/proteus_work/LGE/ICCM/framework
}

goEnv () {
	cd /data001/sh.son/proteus_work/QC/qnx_ap/3rdparty
}

goDiag () {
	cd /data001/sh.son/proteus_work/LGE/ICCM/framework/diag
}

goSomeip () {
	cd /data001/sh.son/proteus_work/LGE/ICCM/framework/someip
}

#goRcd () {
#	cd /data001/sh.son/proteus_work/LGE/ICCM/framework/rcd
#}

setEnv () {
	CURRENT_DIR=`pwd`
	QC_DIR=/data001/sh.son/proteus_work/QC/qnx_ap/3rdparty
	cd $QC_DIR
	source $QC_DIR/proteus_build_config.sh
	cd $CURRENT_DIR
	PATH=$PATH:/data001/sh.son/proteus_work/LGE/ICCM/framework/common/tool/bin/
}

cgrep()
{
	 find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f \( -name '*.c' -o -name '*.cc' -o -name '*.cpp' -o -name '*.h' -o -name '*.hpp' \) -exec grep --color -n "$@" {} +
}

mgrep()
{
	find . -type f \( -name '*.mk' -o -name 'Makefile' -o -name '*.sh' \) -exec grep --color -n "$@" {} +
}
