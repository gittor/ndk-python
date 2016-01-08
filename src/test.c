

// #include "patchlevel.h"
#include "pyconfig.h"
// #include "pymacconfig.h"

#include <limits.h>

#ifndef UCHAR_MAX
#error "Something's broken.  UCHAR_MAX should be defined in limits.h."
#endif

#if UCHAR_MAX != 255
#error "Python's source code assumes C's unsigned char is an 8-bit type."
#endif

#if defined(__sgi) && defined(WITH_THREAD) && !defined(_SGI_MP_SOURCE)
#define _SGI_MP_SOURCE
#endif

#include <stdio.h>
#ifndef NULL
#   error "Python.h requires that stdio.h define NULL."
#endif

#include <string.h>
#ifdef HAVE_ERRNO_H
#include <errno.h>
#endif
#include <stdlib.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif

/* For size_t? */
#ifdef HAVE_STDDEF_H
#include <stddef.h>
#endif

// /* CAUTION:  Build setups should ensure that NDEBUG is defined on the
//  * compiler command line when building Python in release mode; else
//  * assert() calls won't be removed.
//  */
#include <assert.h>


// #if defined(SIZEOF_LONG)
// 	// #error "SIZEOF_LONG is set"
// 	#if SIZEOF_LONG==8
// 		#error "SIZEOF_LONG==8"
// 	#endif
// #else
// 	#error "ndk has no SIZEOF_LONG"
// #endif

// #if defined(LONG_BIT)
// 	// #error "LONG_BIT is set"
// 	#if LONG_BIT==32
// 		#error "LONG_BIT==32"
// 	#endif
// #else
// 	#error "ndk has no LONG_BIT"
// #endif

// #if defined(UNIVERSAL)
//   #if defined(CONFIG_64)
// 		#error "use CONFIG_64"
//   #elif defined(CONFIG_32)
//     #error "use CONFIG_32"
//   #endif
// #else
// 	#error "no UNIVERSAL"
// #endif