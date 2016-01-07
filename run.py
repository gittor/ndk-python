import zcmd
import re

while True:
	ret,val = zcmd.run('sh compile.sh')
	if ret==0:
		break;
	m = re.search('\[/Users/zhangdw/Downloads/python/obj/local/armeabi/objs/protobuf//Users/zhangdw/Downloads/python/jni/__/(.*)\] Error 1', val)	
	fpath = m.group(1)[0:-1]+"c"
	zcmd.run('mv %s /Users/zhangdw/Downloads/python/rmtmp'%(fpath))
	print fpath
