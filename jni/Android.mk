

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libprotobuf
LOCAL_MODULE_FILENAME := libprotobuf

LOCAL_SRC_FILES := $(LOCAL_PATH)/../src/test.c \
$(LOCAL_PATH)/../src/Objects/abstract.c \
$(LOCAL_PATH)/../src/Objects/accu.c \
$(LOCAL_PATH)/../src/Objects/boolobject.c \
$(LOCAL_PATH)/../src/Objects/bytearrayobject.c \
$(LOCAL_PATH)/../src/Objects/bytes_methods.c \
$(LOCAL_PATH)/../src/Objects/bytesobject.c \
$(LOCAL_PATH)/../src/Objects/capsule.c \
$(LOCAL_PATH)/../src/Objects/cellobject.c \
$(LOCAL_PATH)/../src/Objects/classobject.c \
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
$(LOCAL_PATH)/../src/Objects/iterobject.c \
$(LOCAL_PATH)/../src/Objects/listobject.c \
$(LOCAL_PATH)/../src/Objects/longobject.c \
$(LOCAL_PATH)/../src/Objects/memoryobject.c \
$(LOCAL_PATH)/../src/Objects/methodobject.c \
$(LOCAL_PATH)/../src/Objects/moduleobject.c \
$(LOCAL_PATH)/../src/Objects/namespaceobject.c \
$(LOCAL_PATH)/../src/Objects/object.c \
$(LOCAL_PATH)/../src/Objects/obmalloc.c \
$(LOCAL_PATH)/../src/Objects/odictobject.c \
$(LOCAL_PATH)/../src/Objects/rangeobject.c \
$(LOCAL_PATH)/../src/Objects/setobject.c \
$(LOCAL_PATH)/../src/Objects/sliceobject.c \
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
$(LOCAL_PATH)/../src/Parser/listnode.c \
$(LOCAL_PATH)/../src/Parser/metagrammar.c \
$(LOCAL_PATH)/../src/Parser/myreadline.c \
$(LOCAL_PATH)/../src/Parser/node.c \
$(LOCAL_PATH)/../src/Parser/parser.c \
$(LOCAL_PATH)/../src/Parser/parsetok.c \
$(LOCAL_PATH)/../src/Parser/parsetok_pgen.c \
$(LOCAL_PATH)/../src/Parser/pgen.c \
$(LOCAL_PATH)/../src/Parser/pgenmain.c \
$(LOCAL_PATH)/../src/Parser/printgrammar.c \
$(LOCAL_PATH)/../src/Parser/tokenizer.c \
$(LOCAL_PATH)/../src/Parser/tokenizer_pgen.c \
$(LOCAL_PATH)/../src/Python/_warnings.c \
$(LOCAL_PATH)/../src/Python/asdl.c \
$(LOCAL_PATH)/../src/Python/ast.c \
$(LOCAL_PATH)/../src/Python/bltinmodule.c \
$(LOCAL_PATH)/../src/Python/ceval.c \
$(LOCAL_PATH)/../src/Python/codecs.c \
$(LOCAL_PATH)/../src/Python/compile.c \
$(LOCAL_PATH)/../src/Python/dtoa.c \
$(LOCAL_PATH)/../src/Python/dup2.c \
$(LOCAL_PATH)/../src/Python/dynamic_annotations.c \
$(LOCAL_PATH)/../src/Python/dynload_aix.c \
$(LOCAL_PATH)/../src/Python/dynload_dl.c \
$(LOCAL_PATH)/../src/Python/dynload_hpux.c \
$(LOCAL_PATH)/../src/Python/dynload_next.c \
$(LOCAL_PATH)/../src/Python/dynload_shlib.c \
$(LOCAL_PATH)/../src/Python/dynload_stub.c \
$(LOCAL_PATH)/../src/Python/dynload_win.c \
$(LOCAL_PATH)/../src/Python/errors.c \
$(LOCAL_PATH)/../src/Python/fileutils.c \
$(LOCAL_PATH)/../src/Python/formatter_unicode.c \
$(LOCAL_PATH)/../src/Python/frozen.c \
$(LOCAL_PATH)/../src/Python/frozenmain.c \
$(LOCAL_PATH)/../src/Python/future.c \
$(LOCAL_PATH)/../src/Python/getargs.c \
$(LOCAL_PATH)/../src/Python/getcompiler.c \
$(LOCAL_PATH)/../src/Python/getcopyright.c \
$(LOCAL_PATH)/../src/Python/getopt.c \
$(LOCAL_PATH)/../src/Python/getplatform.c \
$(LOCAL_PATH)/../src/Python/getversion.c \
$(LOCAL_PATH)/../src/Python/graminit.c \
$(LOCAL_PATH)/../src/Python/import.c \
$(LOCAL_PATH)/../src/Python/importdl.c \
$(LOCAL_PATH)/../src/Python/marshal.c \
$(LOCAL_PATH)/../src/Python/modsupport.c \
$(LOCAL_PATH)/../src/Python/mysnprintf.c \
$(LOCAL_PATH)/../src/Python/mystrtoul.c \
$(LOCAL_PATH)/../src/Python/peephole.c \
$(LOCAL_PATH)/../src/Python/pyarena.c \
$(LOCAL_PATH)/../src/Python/pyctype.c \
$(LOCAL_PATH)/../src/Python/pyfpe.c \
$(LOCAL_PATH)/../src/Python/pyhash.c \
$(LOCAL_PATH)/../src/Python/pylifecycle.c \
$(LOCAL_PATH)/../src/Python/pymath.c \
$(LOCAL_PATH)/../src/Python/pystate.c \
$(LOCAL_PATH)/../src/Python/pystrcmp.c \
$(LOCAL_PATH)/../src/Python/pystrhex.c \
$(LOCAL_PATH)/../src/Python/pystrtod.c \
$(LOCAL_PATH)/../src/Python/Python-ast.c \
$(LOCAL_PATH)/../src/Python/pythonrun.c \
$(LOCAL_PATH)/../src/Python/pytime.c \
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
$(LOCAL_PATH)/../src/Python \
$(LOCAL_PATH)/../src/Objects/clinic \
$(LOCAL_PATH)/../src/Objects/stringlib \
$(LOCAL_PATH)/../src/Python/clinic

include $(BUILD_STATIC_LIBRARY)

