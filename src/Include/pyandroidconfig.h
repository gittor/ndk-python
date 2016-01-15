#ifndef PYANDROIDCONFIG_H
#define PYANDROIDCONFIG_H

#if (defined(__arm__)&&defined(__ARM_ARCH_7A__)) \
     ||defined(__i386__)

     # undef SIZEOF_LONG_DOUBLE
     # undef SIZEOF_OFF_T
     # undef SIZEOF_PTHREAD_T
     # undef SIZEOF_SIZE_T
     # undef SIZEOF_TIME_T
     # undef SIZEOF_UINTPTR_T
     # undef SIZEOF_VOID_P

     # define SIZEOF_LONG_DOUBLE 8
     # define SIZEOF_OFF_T 4
     # define SIZEOF_PTHREAD_T 4
     # define SIZEOF_SIZE_T 4
     # define SIZEOF_TIME_T 4
     # define SIZEOF_UINTPTR_T 4
     # define SIZEOF_VOID_P 4

     #ifdef __BIG_ENDIAN__
         #define WORDS_BIGENDIAN 1
         #define DOUBLE_IS_BIG_ENDIAN_IEEE754
     #else
         #define DOUBLE_IS_LITTLE_ENDIAN_IEEE754
     #endif /* __BIG_ENDIAN */

     #ifdef __i386__
     # define HAVE_GCC_ASM_FOR_X87
     #endif

     #undef  PY_FORMAT_SIZE_T

#endif

#endif /* PYANDROIDCONFIG_H */
