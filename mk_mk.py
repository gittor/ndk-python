import os

template = '''

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libprotobuf
LOCAL_MODULE_FILENAME := libprotobuf

LOCAL_SRC_FILES := $(ALL_SRC_FILE)

#$(LOCAL_PATH)/../src/Include
LOCAL_C_INCLUDES := $(ALL_HEADER_DIR)

include $(BUILD_STATIC_LIBRARY)

'''

src_files = []
inc_dirs = []
for p, ds, fs in os.walk('src'):
	path = '$(LOCAL_PATH)/../src/%s'%(p[4:])
	for f in fs:
		fext = os.path.splitext(f)[1].lower()
		if fext not in ['.c','.cc','.cpp']: continue
		src_files.append( os.path.join(path,f) )
	for d in ds:
		inc_dirs.append( os.path.join(path,d) )

with open('jni/Android.mk', 'w') as fout:
	template = template.replace('$(ALL_SRC_FILE)', ' \\\n'.join(src_files))
	template = template.replace('$(ALL_HEADER_DIR)', ' \\\n'.join(inc_dirs))
	fout.write(template)




