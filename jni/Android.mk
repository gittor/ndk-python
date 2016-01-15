

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libpython
LOCAL_MODULE_FILENAME := libpython

LOCAL_SRC_FILES := $(LOCAL_PATH)/../src/Modules/_bisectmodule.c \
$(LOCAL_PATH)/../src/Modules/_codecsmodule.c \
$(LOCAL_PATH)/../src/Modules/_collectionsmodule.c \
$(LOCAL_PATH)/../src/Modules/_csv.c \
$(LOCAL_PATH)/../src/Modules/_functoolsmodule.c \
$(LOCAL_PATH)/../src/Modules/_heapqmodule.c \
$(LOCAL_PATH)/../src/Modules/_hotshot.c \
$(LOCAL_PATH)/../src/Modules/_json.c \
$(LOCAL_PATH)/../src/Modules/_localemodule.c \
$(LOCAL_PATH)/../src/Modules/_lsprof.c \
$(LOCAL_PATH)/../src/Modules/_math.c \
$(LOCAL_PATH)/../src/Modules/_randommodule.c \
$(LOCAL_PATH)/../src/Modules/_sre.c \
$(LOCAL_PATH)/../src/Modules/_struct.c \
$(LOCAL_PATH)/../src/Modules/_weakref.c \
$(LOCAL_PATH)/../src/Modules/arraymodule.c \
$(LOCAL_PATH)/../src/Modules/audioop.c \
$(LOCAL_PATH)/../src/Modules/binascii.c \
$(LOCAL_PATH)/../src/Modules/cmathmodule.c \
$(LOCAL_PATH)/../src/Modules/config.c \
$(LOCAL_PATH)/../src/Modules/cPickle.c \
$(LOCAL_PATH)/../src/Modules/cStringIO.c \
$(LOCAL_PATH)/../src/Modules/datetimemodule.c \
$(LOCAL_PATH)/../src/Modules/errnomodule.c \
$(LOCAL_PATH)/../src/Modules/fcntlmodule.c \
$(LOCAL_PATH)/../src/Modules/future_builtins.c \
$(LOCAL_PATH)/../src/Modules/gcmodule.c \
$(LOCAL_PATH)/../src/Modules/getbuildinfo.c \
$(LOCAL_PATH)/../src/Modules/getpath.c \
$(LOCAL_PATH)/../src/Modules/imageop.c \
$(LOCAL_PATH)/../src/Modules/itertoolsmodule.c \
$(LOCAL_PATH)/../src/Modules/main.c \
$(LOCAL_PATH)/../src/Modules/mathmodule.c \
$(LOCAL_PATH)/../src/Modules/md5.c \
$(LOCAL_PATH)/../src/Modules/md5module.c \
$(LOCAL_PATH)/../src/Modules/mmapmodule.c \
$(LOCAL_PATH)/../src/Modules/operator.c \
$(LOCAL_PATH)/../src/Modules/parsermodule.c \
$(LOCAL_PATH)/../src/Modules/posixmodule.c \
$(LOCAL_PATH)/../src/Modules/rotatingtree.c \
$(LOCAL_PATH)/../src/Modules/sha256module.c \
$(LOCAL_PATH)/../src/Modules/sha512module.c \
$(LOCAL_PATH)/../src/Modules/shamodule.c \
$(LOCAL_PATH)/../src/Modules/socketmodule.c \
$(LOCAL_PATH)/../src/Modules/stropmodule.c \
$(LOCAL_PATH)/../src/Modules/symtablemodule.c \
$(LOCAL_PATH)/../src/Modules/threadmodule.c \
$(LOCAL_PATH)/../src/Modules/timemodule.c \
$(LOCAL_PATH)/../src/Modules/timingmodule.c \
$(LOCAL_PATH)/../src/Modules/xxsubtype.c \
$(LOCAL_PATH)/../src/Modules/zipimport.c \
$(LOCAL_PATH)/../src/Modules/zlibmodule.c \
$(LOCAL_PATH)/../src/Modules/_io/_iomodule.c \
$(LOCAL_PATH)/../src/Modules/_io/bufferedio.c \
$(LOCAL_PATH)/../src/Modules/_io/bytesio.c \
$(LOCAL_PATH)/../src/Modules/_io/fileio.c \
$(LOCAL_PATH)/../src/Modules/_io/iobase.c \
$(LOCAL_PATH)/../src/Modules/_io/stringio.c \
$(LOCAL_PATH)/../src/Modules/_io/textio.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/_codecs_cn.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/_codecs_hk.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/_codecs_iso2022.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/_codecs_jp.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/_codecs_kr.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/_codecs_tw.c \
$(LOCAL_PATH)/../src/Modules/cjkcodecs/multibytecodec.c \
$(LOCAL_PATH)/../src/Objects/abstract.c \
$(LOCAL_PATH)/../src/Objects/boolobject.c \
$(LOCAL_PATH)/../src/Objects/bufferobject.c \
$(LOCAL_PATH)/../src/Objects/bytearrayobject.c \
$(LOCAL_PATH)/../src/Objects/bytes_methods.c \
$(LOCAL_PATH)/../src/Objects/capsule.c \
$(LOCAL_PATH)/../src/Objects/cellobject.c \
$(LOCAL_PATH)/../src/Objects/classobject.c \
$(LOCAL_PATH)/../src/Objects/cobject.c \
$(LOCAL_PATH)/../src/Objects/codeobject.c \
$(LOCAL_PATH)/../src/Objects/complexobject.c \
$(LOCAL_PATH)/../src/Objects/descrobject.c \
$(LOCAL_PATH)/../src/Objects/dictobject.c \
$(LOCAL_PATH)/../src/Objects/enumobject.c \
$(LOCAL_PATH)/../src/Objects/exceptions.c \
$(LOCAL_PATH)/../src/Objects/fileobject.c \
$(LOCAL_PATH)/../src/Objects/floatobject.c \
$(LOCAL_PATH)/../src/Objects/frameobject.c \
$(LOCAL_PATH)/../src/Objects/funcobject.c \
$(LOCAL_PATH)/../src/Objects/genobject.c \
$(LOCAL_PATH)/../src/Objects/intobject.c \
$(LOCAL_PATH)/../src/Objects/iterobject.c \
$(LOCAL_PATH)/../src/Objects/listobject.c \
$(LOCAL_PATH)/../src/Objects/longobject.c \
$(LOCAL_PATH)/../src/Objects/memoryobject.c \
$(LOCAL_PATH)/../src/Objects/methodobject.c \
$(LOCAL_PATH)/../src/Objects/moduleobject.c \
$(LOCAL_PATH)/../src/Objects/object.c \
$(LOCAL_PATH)/../src/Objects/obmalloc.c \
$(LOCAL_PATH)/../src/Objects/rangeobject.c \
$(LOCAL_PATH)/../src/Objects/setobject.c \
$(LOCAL_PATH)/../src/Objects/sliceobject.c \
$(LOCAL_PATH)/../src/Objects/stringobject.c \
$(LOCAL_PATH)/../src/Objects/structseq.c \
$(LOCAL_PATH)/../src/Objects/tupleobject.c \
$(LOCAL_PATH)/../src/Objects/typeobject.c \
$(LOCAL_PATH)/../src/Objects/unicodectype.c \
$(LOCAL_PATH)/../src/Objects/unicodeobject.c \
$(LOCAL_PATH)/../src/Objects/weakrefobject.c \
$(LOCAL_PATH)/../src/Parser/acceler.c \
$(LOCAL_PATH)/../src/Parser/bitset.c \
$(LOCAL_PATH)/../src/Parser/firstsets.c \
$(LOCAL_PATH)/../src/Parser/grammar.c \
$(LOCAL_PATH)/../src/Parser/grammar1.c \
$(LOCAL_PATH)/../src/Parser/intrcheck.c \
$(LOCAL_PATH)/../src/Parser/listnode.c \
$(LOCAL_PATH)/../src/Parser/metagrammar.c \
$(LOCAL_PATH)/../src/Parser/myreadline.c \
$(LOCAL_PATH)/../src/Parser/node.c \
$(LOCAL_PATH)/../src/Parser/parser.c \
$(LOCAL_PATH)/../src/Parser/parsetok.c \
$(LOCAL_PATH)/../src/Parser/pgen.c \
$(LOCAL_PATH)/../src/Parser/printgrammar.c \
$(LOCAL_PATH)/../src/Parser/tokenizer.c \
$(LOCAL_PATH)/../src/Python/_warnings.c \
$(LOCAL_PATH)/../src/Python/asdl.c \
$(LOCAL_PATH)/../src/Python/ast.c \
$(LOCAL_PATH)/../src/Python/atof.c \
$(LOCAL_PATH)/../src/Python/bltinmodule.c \
$(LOCAL_PATH)/../src/Python/ceval.c \
$(LOCAL_PATH)/../src/Python/codecs.c \
$(LOCAL_PATH)/../src/Python/compile.c \
$(LOCAL_PATH)/../src/Python/dtoa.c \
$(LOCAL_PATH)/../src/Python/dup2.c \
$(LOCAL_PATH)/../src/Python/errors.c \
$(LOCAL_PATH)/../src/Python/formatter_string.c \
$(LOCAL_PATH)/../src/Python/formatter_unicode.c \
$(LOCAL_PATH)/../src/Python/frozen.c \
$(LOCAL_PATH)/../src/Python/frozenmain.c \
$(LOCAL_PATH)/../src/Python/future.c \
$(LOCAL_PATH)/../src/Python/getargs.c \
$(LOCAL_PATH)/../src/Python/getcompiler.c \
$(LOCAL_PATH)/../src/Python/getcopyright.c \
$(LOCAL_PATH)/../src/Python/getcwd.c \
$(LOCAL_PATH)/../src/Python/getopt.c \
$(LOCAL_PATH)/../src/Python/getplatform.c \
$(LOCAL_PATH)/../src/Python/getversion.c \
$(LOCAL_PATH)/../src/Python/graminit.c \
$(LOCAL_PATH)/../src/Python/import.c \
$(LOCAL_PATH)/../src/Python/marshal.c \
$(LOCAL_PATH)/../src/Python/modsupport.c \
$(LOCAL_PATH)/../src/Python/mysnprintf.c \
$(LOCAL_PATH)/../src/Python/mystrtoul.c \
$(LOCAL_PATH)/../src/Python/peephole.c \
$(LOCAL_PATH)/../src/Python/pyarena.c \
$(LOCAL_PATH)/../src/Python/pyctype.c \
$(LOCAL_PATH)/../src/Python/pyfpe.c \
$(LOCAL_PATH)/../src/Python/pymath.c \
$(LOCAL_PATH)/../src/Python/pystate.c \
$(LOCAL_PATH)/../src/Python/pystrcmp.c \
$(LOCAL_PATH)/../src/Python/pystrtod.c \
$(LOCAL_PATH)/../src/Python/Python-ast.c \
$(LOCAL_PATH)/../src/Python/pythonrun.c \
$(LOCAL_PATH)/../src/Python/random.c \
$(LOCAL_PATH)/../src/Python/sigcheck.c \
$(LOCAL_PATH)/../src/Python/strdup.c \
$(LOCAL_PATH)/../src/Python/structmember.c \
$(LOCAL_PATH)/../src/Python/symtable.c \
$(LOCAL_PATH)/../src/Python/sysmodule.c \
$(LOCAL_PATH)/../src/Python/thread.c \
$(LOCAL_PATH)/../src/Python/traceback.c

#$(LOCAL_PATH)/../src/Include
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../src/Include \
$(LOCAL_PATH)/../src/Objects \
$(LOCAL_PATH)/../src/Parser \
$(LOCAL_PATH)/../src/Python

LOCAL_EXPORT_C_INCLUDES := $LOCAL_C_INCLUDES

include $(BUILD_SHARED_LIBRARY)

