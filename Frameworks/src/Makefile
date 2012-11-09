run: 
	x=`pwd`;\
	CLASSPATH=.:$$x/MDELite/dist/MDELite.jar:$$x/otherclasses;\
	export CLASSPATH;\
	for f in otherclasses/*;\
	do java mdelite.Script $${f##*/} $$x/$$f;\
	done

cleanmore: 
	rm -f outputs/p4/*;\
	rm -rf outputs/toJava/*
