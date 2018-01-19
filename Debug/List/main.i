#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
/**
  ******************************************************************************
  * @file    main.c
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    23-March-2012
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
/* Includes ------------------------------------------------------------------*/
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdint.h"
/* stdint.h standard header */
/* Copyright 2003-2017 IAR Systems AB.  */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2017 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */





#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdint.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"
/* yvals.h internal configuration header file. */
/* Copyright 2001-2017 IAR Systems AB. */





  #pragma system_include


/* Convenience macros */









/* Used to refer to '__aeabi' symbols in the library. */ 


/* Dinkum version */


/* DLib version */




/* Module consistency. */
#pragma rtmodel = "__dlib_version", "6"

/* IAR compiler version check */





/* Read configuration */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"
/***************************************************
 *
 * DLib_Defaults.h is the library configuration manager.
 *
 * Copyright 2003-2017 IAR Systems AB.  
 *
 * This configuration header file performs the following tasks:
 *
 * 1. Includes the configuration header file, defined by _DLIB_CONFIG_FILE,
 *    that sets up a particular runtime environment.
 *
 * 2. Includes the product configuration header file, DLib_Product.h, that
 *    specifies default values for the product and makes sure that the
 *    configuration is valid.
 *
 * 3. Sets up default values for all remaining configuration symbols.
 *
 * This configuration header file, the one defined by _DLIB_CONFIG_FILE, and
 * DLib_Product.h configures how the runtime environment should behave. This
 * includes all system headers and the library itself, i.e. all system headers
 * includes this configuration header file, and the library has been built
 * using this configuration header file.
 *
 ***************************************************
 *
 * DO NOT MODIFY THIS FILE!
 *
 ***************************************************/





  #pragma system_include


/* Include the main configuration header file. */
#line 1 "C:\\\\Program Files (x86)\\\\IAR Systems\\\\Embedded Workbench 8.0\\\\arm\\\\INC\\\\c\\\\DLib_Config_Normal.h"
/* DLib configuration. */
/* Copyright 2003-2017 IAR Systems AB.  */





  #pragma system_include


/* No changes to the defaults. */

#line 40 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"
  /* _DLIB_CONFIG_FILE_STRING is the quoted variant of above */
#line 47 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/* Include the product specific header file. */
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Product.h"
/* Copyright 2017 IAR Systems AB. */





   #pragma system_include



/*********************************************************************
*
*       Configuration
*
*********************************************************************/

/* Wide character and multi byte character support in library.
 * This is not allowed to vary over configurations, since math-library
 * is built with wide character support.
 */


/* This ensures that the standard header file "string.h" includes
 * the Arm-specific file "DLib_Product_string.h". */


/* This ensures that the standard header file "fenv.h" includes
 * the Arm-specific file "DLib_Product_fenv.h". */


/* This ensures that the standard header file "stdlib.h" includes
 * the Arm-specific file "DLib_Product_stdlib.h". */


/* Max buffer used for swap in qsort */









/* Enable AEABI support */


/* Enable rtmodel for setjump buffer size */


/* Enable parsing of hex floats */






/* Special placement for locale structures when building ropi libraries */




/* Use atomic if possible */




/* CPP-library uses software floatingpoint interface */


/* functions for setting errno should be __no_scratch */


/* Use speedy implementation of floats (simple quad). */


/* Configure generic ELF init routines. */
#line 106 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Product.h"









#line 51 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"



/*
 * The remainder of the file sets up defaults for a number of
 * configuration symbols, each corresponds to a feature in the
 * libary.
 *
 * The value of the symbols should either be 1, if the feature should
 * be supported, or 0 if it shouldn't. (Except where otherwise
 * noted.)
 */


/*
 * File handling
 *
 * Determines whether FILE descriptors and related functions exists or not.
 * When this feature is selected, i.e. set to 1, then FILE descriptors and
 * related functions (e.g. fprintf, fopen) exist. All files, even stdin,
 * stdout, and stderr will then be handled with a file system mechanism that
 * buffers files before accessing the lowlevel I/O interface (__open, __read,
 * __write, etc).
 *
 * If not selected, i.e. set to 0, then FILE descriptors and related functions
 * (e.g. fprintf, fopen) does not exist. All functions that normally uses
 * stderr will use stdout instead. Functions that uses stdout and stdin (like
 * printf and scanf) will access the lowlevel I/O interface directly (__open,
 * __read, __write, etc), i.e. there will not be any buffering.
 *
 * The default is not to have support for FILE descriptors.
 */






/*
 * Use static buffers for stdout
 *
 * This setting controls whether the stream stdout uses a static 80 bytes
 * buffer or uses a one byte buffer allocated in the file descriptor. This
 * setting is only applicable if the FILE descriptors are enabled above.
 *
 * Default is to use a static 80 byte buffer.
 */






/*
 * Support of locale interface
 *
 * "Locale" is the system in C that support language- and
 * contry-specific settings for a number of areas, including currency
 * symbols, date and time, and multibyte encodings.
 *
 * This setting determines whether the locale interface exist or not.
 * When this feature is selected, i.e. set to 1, the locale interface exist
 * (setlocale, etc). A number of preselected locales can be activated during
 * runtime. The preselected locales and encodings are choosen at linkage. The
 * application will start with the "C" locale choosen. (Single byte encoding is
 * always supported in this mode.)
 *
 *
 * If not selected, i.e. set to 0, the locale interface (setlocale, etc) does
 * not exist. The C locale is then preset and cannot be changed.
 *
 * The default is not to have support for the locale interface with the "C"
 * locale and the single byte encoding.
 */





/*
 * Define what memory to place the locale table segment (.iar.locale_table)
 * in.
 */




/*
 * Wide character and multi byte character support in library.
 */

#line 153 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Support of multibytes in printf- and scanf-like functions
 *
 * This is the default value for _DLIB_PRINTF_MULTIBYTE and
 * _DLIB_SCANF_MULTIBYTE. See them for a description.
 *
 * Default is to not have support for multibytes in printf- and scanf-like
 * functions.
 */

#line 172 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Hexadecimal floating-point numbers in strtod
 *
 * If selected, i.e. set to 1, strtod supports C99 hexadecimal floating-point
 * numbers. This also enables hexadecimal floating-points in internal functions
 * used for converting strings and wide strings to float, double, and long
 * double.
 *
 * If not selected, i.e. set to 0, C99 hexadecimal floating-point numbers
 * aren't supported.
 *
 * Default is not to support hexadecimal floating-point numbers.
 */






/*
 * Printf configuration symbols.
 *
 * All the configuration symbols described further on controls the behaviour
 * of printf, sprintf, and the other printf variants.
 *
 * The library proves four formatters for printf: 'tiny', 'small',
 * 'large', and 'default'.  The setup in this file controls all except
 * 'tiny'.  Note that both small' and 'large' explicitly removes
 * some features.
 */

/*
 * Handle multibytes in printf
 *
 * This setting controls whether multibytes and wchar_ts are supported in
 * printf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */
#line 223 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Support of formatting anything larger than int in printf
 *
 * This setting controls if 'int' should be used internally in printf, rather
 * than the largest existing integer type. If 'int' is used, any integer or
 * pointer type formatting use 'int' as internal type even though the
 * formatted type is larger. Set to 1 to use 'int' as internal type, otherwise
 * set to 0.
 *
 * See also next configuration.
 *
 * Default is to internally use largest existing internally type.
 */




/*
 * Support of formatting anything larger than long in printf
 *
 * This setting controls if 'long' should be used internally in printf, rather
 * than the largest existing integer type. If 'long' is used, any integer or
 * pointer type formatting use 'long' as internal type even though the
 * formatted type is larger. Set to 1 to use 'long' as internal type,
 * otherwise set to 0.
 *
 * See also previous configuration.
 *
 * Default is to internally use largest existing internally type.
 */








/*
 * Emit a char a time in printf
 *
 * This setting controls internal output handling. If selected, i.e. set to 1,
 * then printf emits one character at a time, which requires less code but
 * can be slightly slower for some types of output.
 *
 * If not selected, i.e. set to 0, then printf buffers some outputs.
 *
 * Note that it is recommended to either use full file support (see
 * _DLIB_FILE_DESCRIPTOR) or -- for debug output -- use the linker
 * option "-e__write_buffered=__write" to enable buffered I/O rather
 * than deselecting this feature.
 */





/*
 * Scanf configuration symbols.
 *
 * All the configuration symbols described here controls the
 * behaviour of scanf, sscanf, and the other scanf variants.
 *
 * The library proves three formatters for scanf: 'small', 'large',
 * and 'default'.  The setup in this file controls all, however both
 * 'small' and 'large' explicitly removes some features.
 */

/*
 * Handle multibytes in scanf
 *
 * This setting controls whether multibytes and wchar_t:s are supported in
 * scanf. Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default.
 */
#line 311 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Handle multibytes in asctime and strftime.
 *
 * This setting controls whether multibytes and wchar_ts are
 * supported.Set to 1 to support them, otherwise set to 0.
 *
 * See _DLIB_FORMATTED_MULTIBYTE for the default setting.
 */
#line 331 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Implement "qsort" using a bubble sort algorithm.
 *
 * Bubble sort is less efficient than quick sort but requires less RAM
 * and ROM resources.
 */






/*
 * Set Buffert size used in qsort
 */






/*
 * Use a simple rand implementation to reduce memory footprint.
 *
 * The default "rand" function uses an array of 32 long:s of memory to
 * store the current state.
 *
 * The simple "rand" function uses only a single long. However, the
 * quality of the generated psuedo-random numbers are not as good as
 * the default implementation.
 */






/*
 * Set attributes for the function used by the C-SPY debug interface to stop at.
 */





/*
 * Used by products where one runtime library can be used by applications
 * with different data models, in order to reduce the total number of
 * libraries required. Typically, this is used when the pointer types does
 * not change over the data models used, but the placement of data variables
 * or/and constant variables do.
 *
 * If defined, this symbol is typically defined to the memory attribute that
 * is used by the runtime library. The actual define must use a
 * _Pragma("type_attribute = xxx") construct. In the header files, it is used
 * on all statically linked data objects seen by the application.
 */




#line 400 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"


/*
 * Turn on support for the Target-specific ABI. The ABI is based on the
 * ARM AEABI. A target, except ARM, may deviate from it.
 */

#line 414 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"


  /* Possible AEABI deviations */
#line 424 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

#line 432 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

  /*
   * The "difunc" table contains information about C++ objects that
   * should be dynamically initialized, where each entry in the table
   * represents an initialization function that should be called. When
   * the symbol _DLIB_AEABI_DIFUNC_CONTAINS_OFFSETS is true, each
   * entry in the table is encoded as an offset from the entry
   * location. When false, the entries contain the actual addresses to
   * call.
   */






/*
 * Turn on usage of a pragma to tell the linker the number of elements used
 * in a setjmp jmp_buf.
 */






/*
 * If true, the product supplies a "DLib_Product_string.h" file that
 * is included from "string.h".
 */





/*
 * Determine whether the math fma routines are fast or not.
 */





/*
 * Favor speed versus some size enlargements in floating point functions.
 */





/*
 * Include dlmalloc as an alternative heap manager in the product.
 *
 * Typically, an application will use a "malloc" heap manager that is
 * relatively small but not that efficient. An application can
 * optionally use the "dlmalloc" package, which provides a more
 * effective "malloc" heap manager, if it is included in the product
 * and supported by the settings.
 *
 * See the product documentation on how to use it, and whether or not
 * it is included in the product.
 */


  /* size_t/ptrdiff_t must be a 4 bytes unsigned integer. */
#line 504 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"


/*
 * Make sure certain C++ functions use the soft floating point variant.
 */






/*
 * Allow the 64-bit time_t interface?
 *
 * Default is yes if long long is 64 bits.
 */

#line 528 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"


/*
 * Is time_t 64 or 32 bits?
 *
 * Default is 32 bits.
 */






/*
 * Do we include math functions that demands lots of constant bytes?
 * (like erf, erfc, expm1, fma, lgamma, tgamma, and *_accurate)
 *
 */






/*
 * Support of weak.
 *
 * __weak must be supported. Support of weak means that the call to
 * a weak declared function that isn't part of the application will be
 * executed as a nop instruction.
 *
 */

#line 568 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Defaults.h"

/*
 * Deleted options
 */












#line 43 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"








/* A definiton for a function of what effects it has.
   NS  = no_state, errno, i.e. it uses no internal or external state. It may
         write to errno though
   NE  = no_state, i.e. it uses no internal or external state, not even
         writing to errno. 
   NRx = no_read(x), i.e. it doesn't read through pointer parameter x.
   NWx = no_write(x), i.e. it doesn't write through pointer parameter x.
   Rx  = returns x, i.e. the function will return parameter x.
   
   All the functions with effects also has "always_returns", 
   i.e. the function will always return.
*/

#line 83 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

/* Common function attribute macros */







/* namespace and extern "C" handling */
#line 102 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"



/*
 * Support for C99/C11 functionality, C99 secure C functionality, and some
 * other functionality.
 *
 * This setting makes available some macros, functions, etc that are
 * either mandatory in C99/C11 or beneficial.
 *
 * Default is to include them.
 *
 * Disabling this in C++ mode will not compile (some C++ functions uses C99
 * functionality).
 */


  /* Default turned on only when compiling C89 (not C++, C99, or C11). */
#line 128 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"





/* Secure C */
#line 141 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"










/* C++ language setup */
#line 196 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

#line 204 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

#line 211 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

/* MB_LEN_MAX (max for utf-8 is 4) */


/* for parsing numerics */




/* wchar_t setup */
#line 232 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"
  typedef unsigned int _Wchart;

    typedef unsigned int _Wintt;
#line 255 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

/* POINTER PROPERTIES */


/* size_t setup */
typedef unsigned int     _Sizet;

/* mbstatet setup */
typedef struct _Mbstatet
{ /* state of a multibyte translation */

    unsigned int _Wchar;  /* Used as an intermediary value (up to 32-bits) */
    unsigned int _State;  /* Used as a state value (only some bits used) */
#line 275 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

#line 299 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"
} _Mbstatet;






/* printf setup */


/* stdarg PROPERTIES */





  typedef struct __va_list
  {
    char  *_Ap;
  } __va_list;
  typedef __va_list __Va_list;
















/* File position */
typedef struct
{       

    long long _Off;    /* can be system dependent */



  _Mbstatet _Wstate;
} _Fpost;





/* THREAD AND LOCALE CONTROL */


/* MULTITHREAD PROPERTIES */

  
  /* The lock interface for DLib to use. */ 
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);

#line 373 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

  typedef void *__iar_Rmtx;

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamiclock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamiclock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamiclock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamiclock(__iar_Rmtx *);

  
#line 406 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"

#line 446 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\yvals.h"



/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:0576 */
#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdint.h"





/* Fixed size types. These are all optional. */

  typedef signed char          int8_t;
  typedef unsigned char        uint8_t;



  typedef signed short int         int16_t;
  typedef unsigned short int       uint16_t;



  typedef signed int         int32_t;
  typedef unsigned int       uint32_t;



  typedef signed long long int         int64_t;
  typedef unsigned long long int       uint64_t;


/* Types capable of holding at least a certain number of bits.
   These are not optional for the sizes 8, 16, 32, 64. */
typedef signed char      int_least8_t;
typedef unsigned char    uint_least8_t;

typedef signed short int     int_least16_t;
typedef unsigned short int   uint_least16_t;

typedef signed int     int_least32_t;
typedef unsigned int   uint_least32_t;

/* This isn't really optional, but make it so for now. */

  typedef signed long long int   int_least64_t;


  typedef unsigned long long int uint_least64_t;


/* The fastest type holding at least a certain number of bits.
   These are not optional for the size 8, 16, 32, 64.
   For now, the 64 bit size is optional in IAR compilers. */
typedef signed int       int_fast8_t;
typedef unsigned int     uint_fast8_t;

typedef signed int      int_fast16_t;
typedef unsigned int    uint_fast16_t;

typedef signed int      int_fast32_t;
typedef unsigned int    uint_fast32_t;


  typedef signed long long int    int_fast64_t;


  typedef unsigned long long int  uint_fast64_t;


/* The integer type capable of holding the largest number of bits. */
typedef signed long long int          intmax_t;
typedef unsigned long long int        uintmax_t;

/* An integer type large enough to be able to hold a pointer.
   This is optional, but always supported in IAR compilers. */
typedef signed int          intptr_t;
typedef unsigned int        uintptr_t;

/* An integer capable of holding a pointer to a specific memory type. */



typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;


/* Minimum and maximum limits. */

























































































/* Macros expanding to integer constants. */
































/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:0576 */
#line 32 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"
/* string.h standard header */
/* Copyright 2009-2017 IAR Systems AB. */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2017 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */





#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\ysizet.h"
/* ysizet.h internal header file. */
/* Copyright 2003-2017 IAR Systems AB.  */





  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2017 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */





#line 12 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\ysizet.h"


/* type definitions */



  typedef _Sizet size_t;




typedef unsigned int __data_size_t;




#line 13 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Product_string.h"
/**************************************************
 *
 * ARM-specific configuration for string.h in DLib.
 *
 * Copyright 2006-2017 IAR Systems AB.
 *
 * $Id: DLib_Product_string.h 112610 2017-02-09 08:49:48Z danielfl $
 *
 **************************************************/





  #pragma system_include




  /*
   * The following is pre-declared by the compiler.
   *
   * __INTRINSIC void __aeabi_memset (void *, size_t, int);
   * __INTRINSIC void __aeabi_memcpy (void *, const void *, size_t);
   * __INTRINSIC void __aeabi_memmove(void *, const void *, size_t);
   */


  /*
   * Inhibit inline definitions for routines with an effective
   * ARM-specific implementation.
   *
   * Not in Cortex-M1 and Cortex-MS1
   */

#line 46 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\DLib_Product_string.h"

  /*
   * Redirect calls to standard functions to the corresponding
   * __aeabi_X function.
   */



  #pragma inline=forced_no_body
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns") __intrinsic __nounwind void * memcpy(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memcpy(_D, _S, _N);
    return _D;
  }


  #pragma inline=forced_no_body
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns") __intrinsic __nounwind void * memmove(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memmove(_D, _S, _N);
    return _D;
  }


  #pragma inline=forced_no_body
  _Pragma("function_effects = no_state, no_read(1), returns 1, always_returns") __intrinsic __nounwind void * memset(void * _D, int _C, size_t _N)
  {
    __aeabi_memset(_D, _N, _C);
    return _D;
  }




#line 16 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"


/* macros */




/* type definitions */
#line 35 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"

/* declarations */

  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   int       memcmp(const void *, const void *,
                                                   size_t);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind void *    memcpy(void *restrict, 
                                                   const void *restrict,
                                                   size_t);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind void *    memmove(void *, const void *,
                                                    size_t);
  _Pragma("function_effects = no_state, no_read(1), returns 1, always_returns")     __intrinsic __nounwind void *    memset(void *, int, size_t);
  _Pragma("function_effects = no_state, no_write(2), returns 1, always_returns")     __intrinsic __nounwind char *    strcat(char *restrict, 
                                                   const char *restrict);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   int       strcmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2), always_returns")     __intrinsic __nounwind   int       strcoll(const char *, const char *);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind char *    strcpy(char *restrict, 
                                                   const char *restrict);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   size_t    strcspn(const char *, const char *);
                    __intrinsic __nounwind char *    strerror(int);
  _Pragma("function_effects = no_state, no_write(1), always_returns")      __intrinsic __nounwind   size_t    strlen(const char *);
  _Pragma("function_effects = no_state, no_write(2), returns 1, always_returns")     __intrinsic __nounwind char *    strncat(char *restrict, 
                                                    const char *restrict,
                                                    size_t);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   int       strncmp(const char *, const char *, 
                                                    size_t);
  _Pragma("function_effects = no_state, no_read(1), no_write(2), returns 1, always_returns")  __intrinsic __nounwind char *    strncpy(char *restrict, 
                                                    const char *restrict,
                                                    size_t);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns")   __intrinsic __nounwind   size_t    strspn(const char *, const char *);
  _Pragma("function_effects = no_write(2), always_returns")         __intrinsic __nounwind char *    strtok(char *restrict, 
                                                   const char *restrict);
  _Pragma("function_effects = no_write(2), always_returns")        __intrinsic __nounwind   size_t    strxfrm(char *restrict, 
                                                    const char *restrict,
                                                    size_t);

    _Pragma("function_effects = no_write(1), always_returns")      __intrinsic __nounwind   char *    strdup(const char *);
    _Pragma("function_effects = no_write(1,2), always_returns")   __intrinsic __nounwind   int       strcasecmp(const char *,
                                                       const char *);
    _Pragma("function_effects = no_write(1,2), always_returns")   __intrinsic __nounwind   int       strncasecmp(const char *,
                                                        const char *, size_t);
    _Pragma("function_effects = no_state, no_write(2), always_returns")    __intrinsic __nounwind   char *    strtok_r(char *, const char *,
                                                     char **);
    _Pragma("function_effects = no_state, no_write(1), always_returns")     __intrinsic __nounwind size_t    strnlen(char const *, size_t);



#line 171 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"
  _Pragma("function_effects = no_state, no_write(1), always_returns")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_write(1), always_returns")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_write(1), always_returns")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_write(1,2), always_returns") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);


#line 200 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\string.h"



/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:0576 */
#line 33 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"
/* stdio.h standard header */
/* Copyright 2003-2017 IAR Systems AB.  */




  #pragma system_include


#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\ycheck.h"
/* ycheck.h internal checking header file. */
/* Copyright 2005-2017 IAR Systems AB. */

/* Note that there is no include guard for this header. This is intentional. */


  #pragma system_include


/* __AEABI_PORTABILITY_INTERNAL_LEVEL
 *
 * Note: Redefined each time ycheck.h is included, i.e. for each
 * system header, to ensure that ABI support could be turned off/on
 * individually for each file.
 *
 * Possible values for this preprocessor symbol:
 *
 * 0 - ABI portability mode is disabled.
 *
 * 1 - ABI portability mode (version 1) is enabled.
 *
 * All other values are reserved for future use.
 */





#line 11 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"



/* Module consistency. */
#pragma rtmodel="__dlib_file_descriptor","0"

/* macros */




#line 29 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"

#line 98 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"







/* type definitions */
typedef _Fpost fpos_t;

#line 119 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"

/* printf and scanf pragma support */
#line 136 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"




#line 189 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"



    /* Corresponds to fgets(char *, int, stdin); */
    _Pragma("function_effects = no_read(1), always_returns") __intrinsic __nounwind   char * __gets(char *, int);
    _Pragma("function_effects = no_read(1), always_returns")  __intrinsic __nounwind char * gets(char *);

  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind    void   perror(const char *);
  _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    printf(const char *restrict, ...);
  _Pragma("function_effects = no_write(1), always_returns")    __intrinsic __nounwind    int    puts(const char *);
  _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind  int    scanf(const char *restrict, ...);
  _Pragma("function_effects = no_read(1), no_write(2), always_returns")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    sprintf(char *restrict, 
                                              const char *restrict, ...);
  _Pragma("function_effects = no_write(1,2), always_returns")  _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind  int    sscanf(const char *restrict, 
                                             const char *restrict, ...);
                                      /* Corresponds to "ungetc(c, stdout)" */
  __intrinsic __nounwind                 int    __ungetchar(int);
  _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int    vprintf(const char *restrict,
                                              __Va_list);

    _Pragma("function_effects = no_write(1), always_returns")     _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int vscanf(const char *restrict, __Va_list);
    _Pragma("function_effects = no_write(1,2), always_returns")  _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown") __intrinsic __nounwind int vsscanf(const char *restrict, 
                                            const char *restrict, __Va_list);

  _Pragma("function_effects = no_read(1), no_write(2), always_returns")   _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *restrict, 
                                             const char *restrict, __Va_list);
                                /* Corresponds to fwrite(p, x, y, stdout); */
  _Pragma("function_effects = no_write(1), always_returns") __intrinsic __nounwind size_t   __write_array(const void *, size_t, size_t);

    _Pragma("function_effects = no_read(1), no_write(3), always_returns")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *restrict, size_t, 
                                              const char *restrict, ...);
    _Pragma("function_effects = no_read(1), no_write(3), always_returns")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *restrict, size_t,
                                               const char *restrict,
                                               __Va_list);


  __intrinsic __nounwind int                getchar(void);
  __intrinsic __nounwind int                putchar(int);
  /* File system functions that have debug variants. They are agnostic on 
     whether the library is full or normal. */
  __intrinsic __nounwind int                remove(const char *);
  __intrinsic __nounwind int                rename(const char *, const char *);


#line 283 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdio.h"



/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:0576 */
#line 34 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"


#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"
/**
  ******************************************************************************
  * @file    stm32f0xx.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   CMSIS Cortex-M0 Device Peripheral Access Layer Header File. 
  *          This file contains all the peripheral register's definitions, bits 
  *          definitions and memory mapping for STM32F0xx devices.  
  *          
  *          The file is the unique include file that the application programmer
  *          is using in the C source code, usually in main.c. This file contains:
  *           - Configuration section that allows to select:
  *              - The device used in the target application
  *              - To use or not the peripheralвЂ™s drivers in application code(i.e. 
  *                code will be based on direct access to peripheralвЂ™s registers 
  *                rather than drivers API), this option is controlled by 
  *                "#define USE_STDPERIPH_DRIVER"
  *              - To change few application-specific parameters such as the HSE 
  *                crystal frequency
  *           - Data structures and the address mapping for all peripherals
  *           - Peripheral's registers declarations and bits definition
  *           - Macros to access peripheralвЂ™s registers hardware
  *                 
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/** @addtogroup CMSIS
  * @{
  */

/** @addtogroup stm32f0xx
  * @{
  */
    






  
/** @addtogroup Library_configuration_section
  * @{
  */
  
/* Uncomment the line below according to the target STM32F-0 device used in your 
   application 
  */




/*  Tip: To avoid modifying this file each time you need to switch between these
        devices, you can define the device in your toolchain compiler preprocessor.

 - STM32F0xx devices are STM32F050xx microcontrollers where the Flash memory 
   density ranges between 32 and 64 Kbytes.
  */






/**
 * @brief Comment the line below if you will not use the peripherals drivers.
   In this case, these drivers will not be included and the application code will 
   be based on direct access to peripherals registers 
   */
  /*#define USE_STDPERIPH_DRIVER*/


/**
 * @brief In the following line adjust the value of External High Speed oscillator (HSE)
   used in your application 
   
   Tip: To avoid modifying this file each time you need to use different HSE, you
        can define the HSE value in your toolchain compiler preprocessor.
  */




/**
 * @brief In the following line adjust the External High Speed oscillator (HSE) Startup 
   Timeout value 
   */




/**
 * @brief In the following line adjust the Internal High Speed oscillator (HSI) Startup 
   Timeout value 
   */
















#line 135 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/**
 * @brief STM32F0xx Standard Peripheral Library version number V1.0.0RC1
   */
#line 147 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/** add user defined types
* @}
*/
  typedef signed char          s8;
  typedef unsigned char        u8;
  typedef signed short int         s16;
  typedef unsigned short int       u16;
  typedef signed int         s32;
  typedef unsigned int       u32;
  typedef signed long long int         s64;
  typedef unsigned long long int       u64;

  /* IO definitions (access restrictions to peripheral registers) */
#line 168 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"


#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"
/* file stm32f0xxAdd.h */
/* определения, не вошедшие в файл stm32f0xx.h */




// Альтернативные функции портов ввода - вывода

#line 17 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

//
// обозначения битов регистров контроллера сенсорных кнопок
//
// -------------------- регистр TSC_CR --------------------
#line 34 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

#line 42 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"


// -------------------- регистр TSC_IER --------------------



// -------------------- регистр TSC_ICR --------------------



// -------------------- регистр TSC_ISR --------------------



// -------------------- регистр TSC_IOHCR ------------------
#line 81 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

// -------------------- регистр TSC_IOASCR ------------------
#line 107 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

// -------------------- регистр TSC_IOSCR ------------------
#line 133 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

// -------------------- регистр TSC_IOCCR ------------------
#line 159 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

// -------------------- регистр TSC_IOGCSR ------------------
#line 173 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xxAdd.h"

// -------------------- регистр TSC_IOG_CR ------------------







#line 171 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/** @addtogroup Configuration_section_for_CMSIS
  * @{
  */

/**
 * @brief STM32F0xx Interrupt Number Definition, according to the selected device 
 *        in @ref Library_configuration_section 
 */





/*!< Interrupt Number Definition */
typedef enum IRQn
{
/******  Cortex-M0 Processor Exceptions Numbers ******************************************************/
  NonMaskableInt_IRQn         = -14,    /*!< 2 Non Maskable Interrupt                                */
  HardFault_IRQn              = -13,    /*!< 3 Cortex-M0 Hard Fault Interrupt                        */
  SVC_IRQn                    = -5,     /*!< 11 Cortex-M0 SV Call Interrupt                          */
  PendSV_IRQn                 = -2,     /*!< 14 Cortex-M0 Pend SV Interrupt                          */
  SysTick_IRQn                = -1,     /*!< 15 Cortex-M0 System Tick Interrupt                      */

/******  STM32F-0 specific Interrupt Numbers *********************************************************/
  WWDG_IRQn                   = 0,      /*!< Window WatchDog Interrupt                               */
  PVD_IRQn                    = 1,      /*!< PVD through EXTI Line detect Interrupt                  */
  RTC_IRQn                    = 2,      /*!< RTC through EXTI Line Interrupt                         */
  FLASH_IRQn                  = 3,      /*!< FLASH Interrupt                                         */
  RCC_IRQn                    = 4,      /*!< RCC Interrupt                                           */
  EXTI0_1_IRQn                = 5,      /*!< EXTI Line 0 and 1 Interrupts                            */
  EXTI2_3_IRQn                = 6,      /*!< EXTI Line 2 and 3 Interrupts                            */
  EXTI4_15_IRQn               = 7,      /*!< EXTI Line 4 to 15 Interrupts                            */
  TS_IRQn                     = 8,      /*!< TS Interrupt                                            */
  DMA1_Channel1_IRQn          = 9,      /*!< DMA1 Channel 1 Interrupt                                */
  DMA1_Channel2_3_IRQn        = 10,     /*!< DMA1 Channel 2 and Channel 3 Interrupts                 */
  DMA1_Channel4_5_IRQn        = 11,     /*!< DMA1 Channel 4 and Channel 5 Interrupts                 */
  ADC1_COMP_IRQn              = 12,     /*!< ADC1, COMP1 and COMP2 Interrupts                        */
  TIM1_BRK_UP_TRG_COM_IRQn    = 13,     /*!< TIM1 Break, Update, Trigger and Commutation Interrupts  */
  TIM1_CC_IRQn                = 14,     /*!< TIM1 Capture Compare Interrupt                          */
  TIM2_IRQn                   = 15,     /*!< TIM2 Interrupt                                          */
  TIM3_IRQn                   = 16,     /*!< TIM3 Interrupt                                          */
  TIM6_DAC_IRQn               = 17,     /*!< TIM6 and DAC Interrupts                                 */
  TIM14_IRQn                  = 19,     /*!< TIM14 Interrupt                                         */
  TIM15_IRQn                  = 20,     /*!< TIM15 Interrupt                                         */
  TIM16_IRQn                  = 21,     /*!< TIM16 Interrupt                                         */
  TIM17_IRQn                  = 22,     /*!< TIM17 Interrupt                                         */
  I2C1_IRQn                   = 23,     /*!< I2C1 Interrupt                                          */
  I2C2_IRQn                   = 24,     /*!< I2C2 Interrupt                                          */
  SPI1_IRQn                   = 25,     /*!< SPI1 Interrupt                                          */
  SPI2_IRQn                   = 26,     /*!< SPI2 Interrupt                                          */
  USART1_IRQn                 = 27,     /*!< USART1 Interrupt                                        */
  USART2_IRQn                 = 28,     /*!< USART2 Interrupt                                        */
  CEC_IRQn                    = 30      /*!< CEC Interrupt                                           */
} IRQn_Type;

/**
  * @}
  */

//#include "core_cm0.h"
//#include "system_stm32f0xx.h"


/** @addtogroup Exported_types
  * @{
  */  

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

/** @addtogroup Peripheral_registers_structures
  * @{
  */   

/** 
  * @brief Analog to Digital Converter  
  */

typedef struct
{
  volatile uint32_t ISR;          /*!< ADC Interrupt and Status register,                          Address offset:0x00 */
  volatile uint32_t IER;          /*!< ADC Interrupt Enable register,                              Address offset:0x04 */
  volatile uint32_t CR;           /*!< ADC Control register,                                       Address offset:0x08 */
  volatile uint32_t CFGR1;        /*!< ADC Configuration register 1,                               Address offset:0x0C */
  volatile uint32_t CFGR2;        /*!< ADC Configuration register 2,                               Address offset:0x10 */
  volatile uint32_t SMPR;         /*!< ADC Sampling time register,                                 Address offset:0x14 */
  uint32_t   RESERVED1;       /*!< Reserved,                                                                  0x18 */
  uint32_t   RESERVED2;       /*!< Reserved,                                                                  0x1C */
  volatile uint32_t TR;           /*!< ADC watchdog threshold register,                            Address offset:0x20 */
  uint32_t   RESERVED3;       /*!< Reserved,                                                                  0x24 */
  volatile uint32_t CHSELR;       /*!< ADC channel selection register,                             Address offset:0x28 */
  uint32_t   RESERVED4[5];    /*!< Reserved,                                                                  0x2C */
   volatile uint32_t DR;          /*!< ADC data register,                                          Address offset:0x40 */
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
} ADC_Common_TypeDef;

/** 
  * @brief HDMI-CEC 
  */

typedef struct
{
  volatile uint32_t CR;           /*!< CEC control register,                                       Address offset:0x00 */
  volatile uint32_t CFGR;         /*!< CEC configuration register,                                 Address offset:0x04 */
  volatile uint32_t TXDR;         /*!< CEC Tx data register ,                                      Address offset:0x08 */
  volatile uint32_t RXDR;         /*!< CEC Rx Data Register,                                       Address offset:0x0C */
  volatile uint32_t ISR;          /*!< CEC Interrupt and Status Register,                          Address offset:0x10 */
  volatile uint32_t IER;          /*!< CEC interrupt enable register,                              Address offset:0x14 */
}CEC_TypeDef;

/**
  * @brief Comparator 
  */

typedef struct
{
  volatile uint32_t CSR;     /*!< COMP comparator control and status register, Address offset: 0x1C */
} COMP_TypeDef;


/** 
  * @brief CRC calculation unit 
  */

typedef struct
{
  volatile uint32_t DR;       /*!< CRC Data register,                           Address offset: 0x00 */
  volatile uint8_t  IDR;      /*!< CRC Independent data register,               Address offset: 0x04 */
  uint8_t   RESERVED0;    /*!< Reserved,                                                    0x05 */
  uint16_t  RESERVED1;    /*!< Reserved,                                                    0x06 */
  volatile uint32_t CR;       /*!< CRC Control register,                        Address offset: 0x08 */
  uint32_t  RESERVED2;    /*!< Reserved,                                                    0x0C */
  volatile uint32_t INIT;     /*!< Initial CRC value register,                  Address offset: 0x10 */
} CRC_TypeDef;


/** 
  * @brief Digital to Analog Converter
  */

typedef struct
{
  volatile uint32_t CR;           /*!< DAC control register,                                     Address offset: 0x00 */
  volatile uint32_t SWTRIGR;      /*!< DAC software trigger register,                            Address offset: 0x04 */
  volatile uint32_t DHR12R1;      /*!< DAC channel1 12-bit right-aligned data holding register,  Address offset: 0x08 */
  volatile uint32_t DHR12L1;      /*!< DAC channel1 12-bit left aligned data holding register,   Address offset: 0x0C */
  volatile uint32_t DHR8R1;       /*!< DAC channel1 8-bit right aligned data holding register,   Address offset: 0x10 */
       uint32_t RESERVED[6];  /*!< Reserved,                                                                 0x14 */
  volatile uint32_t DOR1;         /*!< DAC channel1 data output register,                        Address offset: 0x2C */
       uint32_t RESERVED1;    /*!< Reserved,                                                                 0x30 */
  volatile uint32_t SR;           /*!< DAC status register,                                      Address offset: 0x34 */
} DAC_TypeDef;

/** 
  * @brief Debug MCU
  */

typedef struct
{
  volatile uint32_t IDCODE;       /*!< MCU device ID code,                          Address offset: 0x00 */
  volatile uint32_t CR;           /*!< Debug MCU configuration register,            Address offset: 0x04 */
  volatile uint32_t APB1FZ;       /*!< Debug MCU APB1 freeze register,              Address offset: 0x08 */
  volatile uint32_t APB2FZ;       /*!< Debug MCU APB2 freeze register,              Address offset: 0x0C */
}DBGMCU_TypeDef;

/** 
  * @brief DMA Controller
  */

typedef struct
{
  volatile uint32_t CCR;          /*!< DMA channel x configuration register                                           */
  volatile uint32_t CNDTR;        /*!< DMA channel x number of data register                                          */
  volatile uint32_t CPAR;         /*!< DMA channel x peripheral address register                                      */
  volatile uint32_t CMAR;         /*!< DMA channel x memory address register                                          */
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;          /*!< DMA interrupt status register,                            Address offset: 0x00 */
  volatile uint32_t IFCR;         /*!< DMA interrupt flag clear register,                        Address offset: 0x04 */
} DMA_TypeDef;

/** 
  * @brief External Interrupt/Event Controller
  */

typedef struct
{
  volatile uint32_t IMR;          /*!<EXTI Interrupt mask register,                             Address offset: 0x00 */
  volatile uint32_t EMR;          /*!<EXTI Event mask register,                                 Address offset: 0x04 */
  volatile uint32_t RTSR;         /*!<EXTI Rising trigger selection register ,                  Address offset: 0x08 */
  volatile uint32_t FTSR;         /*!<EXTI Falling trigger selection register,                  Address offset: 0x0C */
  volatile uint32_t SWIER;        /*!<EXTI Software interrupt event register,                   Address offset: 0x10 */
  volatile uint32_t PR;           /*!<EXTI Pending register,                                    Address offset: 0x14 */
}EXTI_TypeDef;

/** 
  * @brief FLASH Registers
  */
typedef struct
{
  volatile uint32_t ACR;          /*!<FLASH access control register,                 Address offset: 0x00 */
  volatile uint32_t KEYR;         /*!<FLASH key register,                            Address offset: 0x04 */
  volatile uint32_t OPTKEYR;      /*!<FLASH OPT key register,                        Address offset: 0x08 */
  volatile uint32_t SR;           /*!<FLASH status register,                         Address offset: 0x0C */
  volatile uint32_t CR;           /*!<FLASH control register,                        Address offset: 0x10 */
  volatile uint32_t AR;           /*!<FLASH address register,                        Address offset: 0x14 */
  volatile uint32_t RESERVED;     /*!< Reserved,                                                     0x18 */
  volatile uint32_t OBR;          /*!<FLASH option bytes register,                   Address offset: 0x1C */
  volatile uint32_t WRPR;         /*!<FLASH option bytes register,                   Address offset: 0x20 */
} FLASH_TypeDef;


/** 
  * @brief Option Bytes Registers
  */
typedef struct
{
  volatile uint16_t RDP;          /*!<FLASH option byte Read protection,             Address offset: 0x00 */
  volatile uint16_t USER;         /*!<FLASH option byte user options,                Address offset: 0x02 */
  uint16_t RESERVED0;         /*!< Reserved,                                                     0x04 */
  uint16_t RESERVED1;         /*!< Reserved,                                                     0x06 */
  volatile uint16_t WRP0;         /*!<FLASH option byte write protection 0,          Address offset: 0x08 */
  volatile uint16_t WRP1;         /*!<FLASH option byte write protection 1,          Address offset: 0x0C */
} OB_TypeDef;
  

/** 
  * @brief General Purpose IO
  */

typedef struct
{
  volatile uint32_t MODER;        /*!< GPIO port mode register,                                  Address offset: 0x00 */
  volatile uint16_t OTYPER;       /*!< GPIO port output type register,                           Address offset: 0x04 */
  uint16_t RESERVED0;         /*!< Reserved,                                                                 0x06 */
  volatile uint32_t OSPEEDR;      /*!< GPIO port output speed register,                          Address offset: 0x08 */
  volatile uint32_t PUPDR;        /*!< GPIO port pull-up/pull-down register,                     Address offset: 0x0C */
  volatile uint16_t IDR;          /*!< GPIO port input data register,                            Address offset: 0x10 */
  uint16_t RESERVED1;         /*!< Reserved,                                                                 0x12 */
  volatile uint16_t ODR;          /*!< GPIO port output data register,                           Address offset: 0x14 */
  uint16_t RESERVED2;         /*!< Reserved,                                                                 0x16 */
  volatile uint32_t BSRR;         /*!< GPIO port bit set/reset registerBSRR,                     Address offset: 0x18 */
  volatile uint32_t LCKR;         /*!< GPIO port configuration lock register,                    Address offset: 0x1C */
  volatile uint32_t AFR[2];       /*!< GPIO alternate function low register,                Address offset: 0x20-0x24 */
  volatile uint16_t BRR;          /*!< GPIO bit reset register,                                  Address offset: 0x28 */
  uint16_t RESERVED3;         /*!< Reserved,                                                                 0x2A */
}GPIO_TypeDef;

/** 
  * @brief SysTem Configuration
  */

typedef struct
{
  volatile uint32_t CFGR1;       /*!< SYSCFG configuration register 1,                           Address offset: 0x00 */
       uint32_t RESERVED;    /*!< Reserved,                                                                  0x04 */
  volatile uint32_t EXTICR[4];   /*!< SYSCFG external interrupt configuration register,     Address offset: 0x14-0x08 */
  volatile uint32_t CFGR2;       /*!< SYSCFG configuration register 2,                           Address offset: 0x18 */
} SYSCFG_TypeDef;

/** 
  * @brief Inter-integrated Circuit Interface
  */

typedef struct
{
  volatile uint32_t CR1;      /*!< I2C Control register 1,            Address offset: 0x00 */
  volatile uint32_t CR2;      /*!< I2C Control register 2,            Address offset: 0x04 */
  volatile uint32_t OAR1;     /*!< I2C Own address 1 register,        Address offset: 0x08 */
  volatile uint32_t OAR2;     /*!< I2C Own address 2 register,        Address offset: 0x0C */
  volatile uint32_t TIMINGR;  /*!< I2C Timing register,               Address offset: 0x10 */
  volatile uint32_t TIMEOUTR; /*!< I2C Timeout register,              Address offset: 0x14 */
  volatile uint32_t ISR;      /*!< I2C Interrupt and status register, Address offset: 0x18 */
  volatile uint32_t ICR;      /*!< I2C Interrupt clear register,      Address offset: 0x1C */
  volatile uint32_t PECR;     /*!< I2C PEC register,                  Address offset: 0x20 */
  volatile uint32_t RXDR;     /*!< I2C Receive data register,         Address offset: 0x24 */
  volatile uint32_t TXDR;     /*!< I2C Transmit data register,        Address offset: 0x28 */
}I2C_TypeDef;


/** 
  * @brief Independent WATCHDOG
  */
typedef struct
{
  volatile uint32_t KR;   /*!< IWDG Key register,       Address offset: 0x00 */
  volatile uint32_t PR;   /*!< IWDG Prescaler register, Address offset: 0x04 */
  volatile uint32_t RLR;  /*!< IWDG Reload register,    Address offset: 0x08 */
  volatile uint32_t SR;   /*!< IWDG Status register,    Address offset: 0x0C */
  volatile uint32_t WINR; /*!< IWDG Window register,    Address offset: 0x10 */
} IWDG_TypeDef;

/** 
  * @brief Power Control
  */

typedef struct
{
  volatile uint32_t CR;   /*!< PWR power control register,        Address offset: 0x00 */
  volatile uint32_t CSR;  /*!< PWR power control/status register, Address offset: 0x04 */
} PWR_TypeDef;


/** 
  * @brief Reset and Clock Control
  */
typedef struct
{
  volatile uint32_t CR;         /*!< RCC clock control register,                                  Address offset: 0x00 */
  volatile uint32_t CFGR;       /*!< RCC clock configuration register,                            Address offset: 0x04 */
  volatile uint32_t CIR;        /*!< RCC clock interrupt register,                                Address offset: 0x08 */
  volatile uint32_t APB2RSTR;   /*!< RCC APB2 peripheral reset register,                          Address offset: 0x0C */
  volatile uint32_t APB1RSTR;   /*!< RCC APB1 peripheral reset register,                          Address offset: 0x10 */
  volatile uint32_t AHBENR;     /*!< RCC AHB peripheral clock register,                           Address offset: 0x14 */
  volatile uint32_t APB2ENR;    /*!< RCC APB2 peripheral clock enable register,                   Address offset: 0x18 */
  volatile uint32_t APB1ENR;    /*!< RCC APB1 peripheral clock enable register,                   Address offset: 0x1C */
  volatile uint32_t BDCR;       /*!< RCC Backup domain control register,                          Address offset: 0x20 */ 
  volatile uint32_t CSR;        /*!< RCC clock control & status register,                         Address offset: 0x24 */
  volatile uint32_t AHBRSTR;    /*!< RCC AHB peripheral reset register,                           Address offset: 0x28 */
  volatile uint32_t CFGR2;      /*!< RCC clock configuration register 2,                          Address offset: 0x2C */
  volatile uint32_t CFGR3;      /*!< RCC clock configuration register 3,                          Address offset: 0x30 */
  volatile uint32_t CR2;        /*!< RCC clock control register 2,                                Address offset: 0x34 */
} RCC_TypeDef;

/** 
  * @brief Real-Time Clock
  */

typedef struct
{                           
  volatile uint32_t TR;         /*!< RTC time register,                                        Address offset: 0x00 */
  volatile uint32_t DR;         /*!< RTC date register,                                        Address offset: 0x04 */
  volatile uint32_t CR;         /*!< RTC control register,                                     Address offset: 0x08 */
  volatile uint32_t ISR;        /*!< RTC initialization and status register,                   Address offset: 0x0C */
  volatile uint32_t PRER;       /*!< RTC prescaler register,                                   Address offset: 0x10 */
       uint32_t RESERVED0;  /*!< Reserved,                                                 Address offset: 0x14 */
       uint32_t RESERVED1;  /*!< Reserved,                                                 Address offset: 0x18 */
  volatile uint32_t ALRMAR;     /*!< RTC alarm A register,                                     Address offset: 0x1C */
       uint32_t RESERVED2;  /*!< Reserved,                                                 Address offset: 0x20 */
  volatile uint32_t WPR;        /*!< RTC write protection register,                            Address offset: 0x24 */
  volatile uint32_t SSR;        /*!< RTC sub second register,                                  Address offset: 0x28 */
  volatile uint32_t SHIFTR;     /*!< RTC shift control register,                               Address offset: 0x2C */
  volatile uint32_t TSTR;       /*!< RTC time stamp time register,                             Address offset: 0x30 */
  volatile uint32_t TSDR;       /*!< RTC time stamp date register,                             Address offset: 0x34 */
  volatile uint32_t TSSSR;      /*!< RTC time-stamp sub second register,                       Address offset: 0x38 */
  volatile uint32_t CAL;        /*!< RTC calibration register,                                 Address offset: 0x3C */
  volatile uint32_t TAFCR;      /*!< RTC tamper and alternate function configuration register, Address offset: 0x40 */
  volatile uint32_t ALRMASSR;   /*!< RTC alarm A sub second register,                          Address offset: 0x44 */
       uint32_t RESERVED3;  /*!< Reserved,                                                 Address offset: 0x48 */
       uint32_t RESERVED4;  /*!< Reserved,                                                 Address offset: 0x4C */
  volatile uint32_t BKP0R;      /*!< RTC backup register 0,                                    Address offset: 0x50 */
  volatile uint32_t BKP1R;      /*!< RTC backup register 1,                                    Address offset: 0x54 */
  volatile uint32_t BKP2R;      /*!< RTC backup register 2,                                    Address offset: 0x58 */
  volatile uint32_t BKP3R;      /*!< RTC backup register 3,                                    Address offset: 0x5C */
  volatile uint32_t BKP4R;      /*!< RTC backup register 4,                                    Address offset: 0x60 */
} RTC_TypeDef;


/** 
  * @brief Serial Peripheral Interface
  */
  
typedef struct
{
  volatile uint16_t CR1;      /*!< SPI Control register 1 (not used in I2S mode),       Address offset: 0x00 */
  uint16_t  RESERVED0;    /*!< Reserved, 0x02                                                            */
  volatile uint16_t CR2;      /*!< SPI Control register 2,                              Address offset: 0x04 */
  uint16_t  RESERVED1;    /*!< Reserved, 0x06                                                            */
  volatile uint16_t SR;       /*!< SPI Status register,                                 Address offset: 0x08 */
  uint16_t  RESERVED2;    /*!< Reserved, 0x0A                                                            */
  volatile uint16_t DR;       /*!< SPI data register,                                   Address offset: 0x0C */
  uint16_t  RESERVED3;    /*!< Reserved, 0x0E                                                            */
  volatile uint16_t CRCPR;    /*!< SPI CRC polynomial register (not used in I2S mode),  Address offset: 0x10 */
  uint16_t  RESERVED4;    /*!< Reserved, 0x12                                                            */
  volatile uint16_t RXCRCR;   /*!< SPI Rx CRC register (not used in I2S mode),          Address offset: 0x14 */
  uint16_t  RESERVED5;    /*!< Reserved, 0x16                                                            */
  volatile uint16_t TXCRCR;   /*!< SPI Tx CRC register (not used in I2S mode),          Address offset: 0x18 */
  uint16_t  RESERVED6;    /*!< Reserved, 0x1A                                                            */ 
  volatile uint16_t I2SCFGR;  /*!< SPI_I2S configuration register,                      Address offset: 0x1C */
  uint16_t  RESERVED7;    /*!< Reserved, 0x1E                                                            */
  volatile uint16_t I2SPR;    /*!< SPI_I2S prescaler register,                          Address offset: 0x20 */
  uint16_t  RESERVED8;    /*!< Reserved, 0x22                                                            */    
} SPI_TypeDef;


/** 
  * @brief TIM
  */
typedef struct
{
  volatile uint16_t CR1;             /*!< TIM control register 1,                      Address offset: 0x00 */
  uint16_t      RESERVED0;       /*!< Reserved,                                                    0x02 */
  volatile uint16_t CR2;             /*!< TIM control register 2,                      Address offset: 0x04 */
  uint16_t      RESERVED1;       /*!< Reserved,                                                    0x06 */
  volatile uint16_t SMCR;            /*!< TIM slave Mode Control register,             Address offset: 0x08 */
  uint16_t      RESERVED2;       /*!< Reserved,                                                    0x0A */
  volatile uint16_t DIER;            /*!< TIM DMA/interrupt enable register,           Address offset: 0x0C */
  uint16_t      RESERVED3;       /*!< Reserved,                                                    0x0E */
  volatile uint16_t SR;              /*!< TIM status register,                         Address offset: 0x10 */
  uint16_t      RESERVED4;       /*!< Reserved,                                                    0x12 */
  volatile uint16_t EGR;             /*!< TIM event generation register,               Address offset: 0x14 */
  uint16_t      RESERVED5;       /*!< Reserved,                                                    0x16 */
  volatile uint16_t CCMR1;           /*!< TIM  capture/compare mode register 1,        Address offset: 0x18 */
  uint16_t      RESERVED6;       /*!< Reserved,                                                    0x1A */
  volatile uint16_t CCMR2;           /*!< TIM  capture/compare mode register 2,        Address offset: 0x1C */
  uint16_t      RESERVED7;       /*!< Reserved,                                                    0x1E */
  volatile uint16_t CCER;            /*!< TIM capture/compare enable register,         Address offset: 0x20 */
  uint16_t      RESERVED8;       /*!< Reserved,                                                    0x22 */
  volatile uint32_t CNT;             /*!< TIM counter register,                        Address offset: 0x24 */
  volatile uint16_t PSC;             /*!< TIM prescaler register,                      Address offset: 0x28 */
  uint16_t      RESERVED10;      /*!< Reserved,                                                    0x2A */
  volatile uint32_t ARR;             /*!< TIM auto-reload register,                    Address offset: 0x2C */
  volatile uint16_t RCR;             /*!< TIM  repetition counter register,            Address offset: 0x30 */
  uint16_t      RESERVED12;      /*!< Reserved,                                                    0x32 */
  volatile uint32_t CCR1;            /*!< TIM capture/compare register 1,              Address offset: 0x34 */
  volatile uint32_t CCR2;            /*!< TIM capture/compare register 2,              Address offset: 0x38 */
  volatile uint32_t CCR3;            /*!< TIM capture/compare register 3,              Address offset: 0x3C */
  volatile uint32_t CCR4;            /*!< TIM capture/compare register 4,              Address offset: 0x40 */
  volatile uint16_t BDTR;            /*!< TIM break and dead-time register,            Address offset: 0x44 */
  uint16_t      RESERVED17;      /*!< Reserved,                                                    0x26 */
  volatile uint16_t DCR;             /*!< TIM DMA control register,                    Address offset: 0x48 */
  uint16_t      RESERVED18;      /*!< Reserved,                                                    0x4A */
  volatile uint16_t DMAR;            /*!< TIM DMA address for full transfer register,  Address offset: 0x4C */
  uint16_t      RESERVED19;      /*!< Reserved,                                                    0x4E */
  volatile uint16_t OR;              /*!< TIM option register,                         Address offset: 0x50 */
  uint16_t      RESERVED20;      /*!< Reserved,                                                    0x52 */
} TIM_TypeDef;

/** 
  * @brief Touch Sensing Controller (TSC)
  */
typedef struct
{
  volatile uint32_t CR;        /*!< TSC control register,                                     Address offset: 0x00 */
  volatile uint32_t IER;       /*!< TSC interrupt enable register,                            Address offset: 0x04 */
  volatile uint32_t ICR;       /*!< TSC interrupt clear register,                             Address offset: 0x08 */ 
  volatile uint32_t ISR;       /*!< TSC interrupt status register,                            Address offset: 0x0C */
  volatile uint32_t IOHCR;     /*!< TSC I/O hysteresis control register,                      Address offset: 0x10 */
  volatile uint32_t RESERVED1; /*!< Reserved,                                                 Address offset: 0x14 */
  volatile uint32_t IOASCR;    /*!< TSC I/O analog switch control register,                   Address offset: 0x18 */
  volatile uint32_t RESERVED2; /*!< Reserved,                                                 Address offset: 0x1C */
  volatile uint32_t IOSCR;     /*!< TSC I/O sampling control register,                        Address offset: 0x20 */
  volatile uint32_t RESERVED3; /*!< Reserved,                                                 Address offset: 0x24 */
  volatile uint32_t IOCCR;     /*!< TSC I/O channel control register,                         Address offset: 0x28 */
  volatile uint32_t RESERVED4; /*!< Reserved,                                                 Address offset: 0x2C */
  volatile uint32_t IOGCSR;    /*!< TSC I/O group control status register,                    Address offset: 0x30 */
  volatile uint32_t IOGXCR[6]; /*!< TSC I/O group x counter register,                         Address offset: 0x34-48 */
} TSC_TypeDef;

/** 
  * @brief Universal Synchronous Asynchronous Receiver Transmitter
  */
  
typedef struct
{
  volatile uint32_t CR1;    /*!< USART Control register 1,                 Address offset: 0x00 */ 
  volatile uint32_t CR2;    /*!< USART Control register 2,                 Address offset: 0x04 */ 
  volatile uint32_t CR3;    /*!< USART Control register 3,                 Address offset: 0x08 */
  volatile uint16_t BRR;    /*!< USART Baud rate register,                 Address offset: 0x0C */
  uint16_t  RESERVED1;  /*!< Reserved, 0x0E                                                 */  
  volatile uint16_t GTPR;   /*!< USART Guard time and prescaler register,  Address offset: 0x10 */
  uint16_t  RESERVED2;  /*!< Reserved, 0x12                                                 */
  volatile uint32_t RTOR;   /*!< USART Receiver Time Out register,         Address offset: 0x14 */  
  volatile uint16_t RQR;    /*!< USART Request register,                   Address offset: 0x18 */
  uint16_t  RESERVED3;  /*!< Reserved, 0x1A                                                 */
  volatile uint32_t ISR;    /*!< USART Interrupt and status register,      Address offset: 0x1C */
  volatile uint32_t ICR;    /*!< USART Interrupt flag Clear register,      Address offset: 0x20 */
  volatile uint16_t RDR;    /*!< USART Receive Data register,              Address offset: 0x24 */
  uint16_t  RESERVED4;  /*!< Reserved, 0x26                                                 */
  volatile uint16_t TDR;    /*!< USART Transmit Data register,             Address offset: 0x28 */
  uint16_t  RESERVED5;  /*!< Reserved, 0x2A                                                 */
} USART_TypeDef;


/** 
  * @brief Window WATCHDOG
  */
typedef struct
{
  volatile uint32_t CR;   /*!< WWDG Control register,       Address offset: 0x00 */
  volatile uint32_t CFR;  /*!< WWDG Configuration register, Address offset: 0x04 */
  volatile uint32_t SR;   /*!< WWDG Status register,        Address offset: 0x08 */
} WWDG_TypeDef;


/**
  * @}
  */
  
/** @addtogroup Peripheral_memory_map
  * @{
  */





/*!< Peripheral memory map */




#line 698 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

#line 711 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

#line 723 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"







/**
  * @}
  */
  
/** @addtogroup Peripheral_declaration
  * @{
  */  

#line 752 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

#line 765 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

#line 777 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"







/**
  * @}
  */

/** @addtogroup Exported_constants
  * @{
  */
  
  /** @addtogroup Peripheral_Registers_Bits_Definition
  * @{
  */
    
/******************************************************************************/
/*                         Peripheral Registers Bits Definition               */
/******************************************************************************/
/******************************************************************************/
/*                                                                            */
/*                      Analog to Digital Converter (ADC)                     */
/*                                                                            */
/******************************************************************************/
/********************  Bits definition for ADC_ISR register  ******************/
#line 811 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for ADC_IER register  ******************/
#line 819 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for ADC_CR register  *******************/






/*******************  Bits definition for ADC_CFGR1 register  *****************/
#line 855 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bits definition for ADC_CFGR2 register  *****************/



/******************  Bit definition for ADC_SMPR register  ********************/





/*******************  Bit definition for ADC_HTR register  ********************/


/*******************  Bit definition for ADC_LTR register  ********************/


/******************  Bit definition for ADC_CHSELR register  ******************/
#line 892 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bit definition for ADC_DR register  ********************/


/*******************  Bit definition for ADC_CCR register  ********************/




/******************************************************************************/
/*                                                                            */
/*                                 HDMI-CEC (CEC)                             */
/*                                                                            */
/******************************************************************************/

/*******************  Bit definition for CEC_CR register  *********************/




/*******************  Bit definition for CEC_CFGR register  *******************/
#line 922 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for CEC_TXDR register  *******************/


/*******************  Bit definition for CEC_RXDR register  *******************/


/*******************  Bit definition for CEC_ISR register  ********************/
#line 943 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for CEC_IER register  ********************/
#line 958 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************************************************************************/
/*                                                                            */
/*                      Analog Comparators (COMP)                             */
/*                                                                            */
/******************************************************************************/
/***********************  Bit definition for COMP_CSR register  ***************/
/* COMP1 bits definition */
#line 985 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"
/* COMP2 bits definition */
#line 1005 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************************************************************************/
/*                                                                            */
/*                       CRC calculation unit (CRC)                           */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for CRC_DR register  *********************/


/*******************  Bit definition for CRC_IDR register  ********************/


/********************  Bit definition for CRC_CR register  ********************/






/*******************  Bit definition for CRC_INIT register  *******************/


/******************************************************************************/
/*                                                                            */
/*                    Digital to Analog Converter (DAC)                       */
/*                                                                            */
/******************************************************************************/
/********************  Bit definition for DAC_CR register  ********************/











/*****************  Bit definition for DAC_SWTRIGR register  ******************/


/*****************  Bit definition for DAC_DHR12R1 register  ******************/


/*****************  Bit definition for DAC_DHR12L1 register  ******************/


/******************  Bit definition for DAC_DHR8R1 register  ******************/


/*******************  Bit definition for DAC_DOR1 register  *******************/


/********************  Bit definition for DAC_SR register  ********************/



/******************************************************************************/
/*                                                                            */
/*                           Debug MCU (DBGMCU)                               */
/*                                                                            */
/******************************************************************************/

/****************  Bit definition for DBGMCU_IDCODE register  *****************/


#line 1089 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for DBGMCU_CR register  *******************/



/******************  Bit definition for DBGMCU_APB1_FZ register  **************/
#line 1103 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for DBGMCU_APB2_FZ register  **************/





/******************************************************************************/
/*                                                                            */
/*                           DMA Controller (DMA)                             */
/*                                                                            */
/******************************************************************************/

/*******************  Bit definition for DMA_ISR register  ********************/
#line 1137 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for DMA_IFCR register  *******************/
#line 1159 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for DMA_CCR register  ********************/
#line 1169 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"















/******************  Bit definition for DMA_CNDTR register  *******************/


/******************  Bit definition for DMA_CPAR register  ********************/


/******************  Bit definition for DMA_CMAR register  ********************/


/******************************************************************************/
/*                                                                            */
/*                 External Interrupt/Event Controller (EXTI)                 */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for EXTI_IMR register  *******************/
#line 1223 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for EXTI_EMR register  ********************/
#line 1249 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for EXTI_RTSR register  ******************/
#line 1270 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for EXTI_FTSR register *******************/
#line 1291 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************* Bit definition for EXTI_SWIER register *******************/
#line 1312 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for EXTI_PR register  *********************/
#line 1333 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************************************************************************/
/*                                                                            */
/*                      FLASH and Option Bytes Registers                      */
/*                                                                            */
/******************************************************************************/

/*******************  Bit definition for FLASH_ACR register  ******************/





/******************  Bit definition for FLASH_KEYR register  ******************/


/*****************  Bit definition for FLASH_OPTKEYR register  ****************/


/******************  Bit definition for FLASH_SR register  *******************/





/*******************  Bit definition for FLASH_CR register  *******************/
#line 1370 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for FLASH_AR register  *******************/


/******************  Bit definition for FLASH_OBR register  *******************/




#line 1385 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for FLASH_WRPR register  ******************/


/*----------------------------------------------------------------------------*/

/******************  Bit definition for OB_RDP register  **********************/



/******************  Bit definition for OB_USER register  *********************/



/******************  Bit definition for OB_WRP0 register  *********************/



/******************  Bit definition for OB_WRP1 register  *********************/



/******************************************************************************/
/*                                                                            */
/*                       General Purpose IOs (GPIO)                           */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for GPIO_MODER register  *****************/
#line 1461 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for GPIO_OTYPER register  *****************/
#line 1479 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/****************  Bit definition for GPIO_OSPEEDR register  ******************/
#line 1529 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for GPIO_PUPDR register ******************/
#line 1579 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for GPIO_IDR register  *******************/
#line 1597 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for GPIO_ODR register  ********************/
#line 1615 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/****************** Bit definition for GPIO_BSRR register  ********************/
#line 1649 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/****************** Bit definition for GPIO_LCKR register  ********************/
#line 1668 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/****************** Bit definition for GPIO_AFRL register  ********************/
#line 1678 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/****************** Bit definition for GPIO_AFRH register  ********************/
#line 1696 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/****************** Bit definition for GPIO_BRR register  *********************/
#line 1714 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************************************************************************/
/*                                                                            */
/*                   Inter-integrated Circuit Interface (I2C)                 */
/*                                                                            */
/******************************************************************************/

/*******************  Bit definition for I2C_CR1 register  *******************/
#line 1743 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for I2C_CR2 register  ********************/
#line 1756 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for I2C_OAR1 register  ******************/




/*******************  Bit definition for I2C_OAR2 register  ******************/




/*******************  Bit definition for I2C_TIMINGR register *******************/






/******************* Bit definition for I2C_TIMEOUTR register *******************/






/******************  Bit definition for I2C_ISR register  *********************/
#line 1799 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for I2C_ICR register  *********************/
#line 1810 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for I2C_PECR register  *********************/


/******************  Bit definition for I2C_RXDR register  *********************/


/******************  Bit definition for I2C_TXDR register  *********************/


/******************************************************************************/
/*                                                                            */
/*                        Independent WATCHDOG (IWDG)                         */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for IWDG_KR register  ********************/


/*******************  Bit definition for IWDG_PR register  ********************/





/*******************  Bit definition for IWDG_RLR register  *******************/


/*******************  Bit definition for IWDG_SR register  ********************/




/*******************  Bit definition for IWDG_KR register  ********************/


/******************************************************************************/
/*                                                                            */
/*                          Power Control (PWR)                               */
/*                                                                            */
/******************************************************************************/

/********************  Bit definition for PWR_CR register  ********************/











/*!< PVD level configuration */
#line 1872 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"



/*******************  Bit definition for PWR_CSR register  ********************/








/******************************************************************************/
/*                                                                            */
/*                         Reset and Clock Control                            */
/*                                                                            */
/******************************************************************************/

/********************  Bit definition for RCC_CR register  ********************/
#line 1901 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for RCC_CFGR register  *******************/
/*!< SW configuration */








/*!< SWS configuration */








/*!< HPRE configuration */






#line 1937 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*!< PPRE configuration */











/*!< ADCPPRE configuration */









/*!< PLLMUL configuration */












#line 1988 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*!< MCO configuration */





#line 2001 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*!<******************  Bit definition for RCC_CIR register  ********************/
#line 2023 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*****************  Bit definition for RCC_APB2RSTR register  *****************/
#line 2034 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*****************  Bit definition for RCC_APB1RSTR register  *****************/
#line 2048 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for RCC_AHBENR register  ******************/
#line 2060 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*****************  Bit definition for RCC_APB2ENR register  ******************/
#line 2071 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*****************  Bit definition for RCC_APB1ENR register  ******************/
#line 2085 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for RCC_BDCR register  *******************/












/*!< RTC congiguration */








/*******************  Bit definition for RCC_CSR register  ********************/  
#line 2119 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for RCC_AHBRSTR register  ****************/
#line 2127 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for RCC_CFGR2 register  ******************/
/*!< PREDIV1 configuration */






#line 2152 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for RCC_CFGR3 register  ******************/
/*!< USART1 Clock source selection */



/*!< I2C1 Clock source selection */




/*******************  Bit definition for RCC_CR2 register  ********************/






/******************************************************************************/
/*                                                                            */
/*                           Real-Time Clock (RTC)                            */
/*                                                                            */
/******************************************************************************/
/********************  Bits definition for RTC_TR register  *******************/
#line 2203 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_DR register  *******************/
#line 2233 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_CR register  *******************/
#line 2253 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_ISR register  ******************/
#line 2268 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_PRER register  *****************/



/********************  Bits definition for RTC_ALRMAR register  ***************/
#line 2314 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_WPR register  ******************/


/********************  Bits definition for RTC_SSR register  ******************/


/********************  Bits definition for RTC_SHIFTR register  ***************/



/********************  Bits definition for RTC_TSTR register  *****************/
#line 2353 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_TSDR register  *****************/
#line 2373 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_TSSSR register  ****************/


/********************  Bits definition for RTC_CAL register  *****************/
#line 2391 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_TAFCR register  ****************/
#line 2413 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_ALRMASSR register  *************/
#line 2421 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bits definition for RTC_BKP0R register  ****************/


/********************  Bits definition for RTC_BKP1R register  ****************/


/********************  Bits definition for RTC_BKP2R register  ****************/


/********************  Bits definition for RTC_BKP3R register  ****************/


/********************  Bits definition for RTC_BKP4R register  ****************/


/******************************************************************************/
/*                                                                            */
/*                        Serial Peripheral Interface (SPI)                   */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for SPI_CR1 register  ********************/
#line 2460 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for SPI_CR2 register  ********************/
#line 2478 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bit definition for SPI_SR register  ********************/
#line 2495 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bit definition for SPI_DR register  ********************/


/*******************  Bit definition for SPI_CRCPR register  ******************/


/******************  Bit definition for SPI_RXCRCR register  ******************/


/******************  Bit definition for SPI_TXCRCR register  ******************/


/******************  Bit definition for SPI_I2SCFGR register  *****************/
#line 2523 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for SPI_I2SPR register  *******************/




/******************************************************************************/
/*                                                                            */
/*                       System Configuration (SYSCFG)                        */
/*                                                                            */
/******************************************************************************/
/*****************  Bit definition for SYSCFG_CFGR1 register  ****************/
#line 2547 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*****************  Bit definition for SYSCFG_EXTICR1 register  ***************/





/** 
  * @brief  EXTI0 configuration  
  */





/** 
  * @brief  EXTI1 configuration  
  */ 





/** 
  * @brief  EXTI2 configuration  
  */





/** 
  * @brief  EXTI3 configuration  
  */




/*****************  Bit definition for SYSCFG_EXTICR2 register  *****************/





/** 
  * @brief  EXTI4 configuration  
  */





/** 
  * @brief  EXTI5 configuration  
  */





/** 
  * @brief  EXTI6 configuration  
  */





/** 
  * @brief  EXTI7 configuration  
  */





/*****************  Bit definition for SYSCFG_EXTICR3 register  *****************/





/** 
  * @brief  EXTI8 configuration  
  */




/** 
  * @brief  EXTI9 configuration  
  */




/** 
  * @brief  EXTI10 configuration  
  */




/** 
  * @brief  EXTI11 configuration  
  */




/*****************  Bit definition for SYSCFG_EXTICR4 register  *****************/





/** 
  * @brief  EXTI12 configuration  
  */




/** 
  * @brief  EXTI13 configuration  
  */




/** 
  * @brief  EXTI14 configuration  
  */




/** 
  * @brief  EXTI15 configuration  
  */




/*****************  Bit definition for SYSCFG_CFGR2 register  ****************/





/******************************************************************************/
/*                                                                            */
/*                               Timers (TIM)                                 */
/*                                                                            */
/******************************************************************************/
/*******************  Bit definition for TIM_CR1 register  ********************/
















/*******************  Bit definition for TIM_CR2 register  ********************/









#line 2737 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for TIM_SMCR register  *******************/



























/*******************  Bit definition for TIM_DIER register  *******************/
#line 2782 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/********************  Bit definition for TIM_SR register  ********************/
#line 2796 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for TIM_EGR register  ********************/
#line 2806 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for TIM_CCMR1 register  *******************/




























/*----------------------------------------------------------------------------*/





















/******************  Bit definition for TIM_CCMR2 register  *******************/




























/*----------------------------------------------------------------------------*/





















/*******************  Bit definition for TIM_CCER register  *******************/
#line 2925 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for TIM_CNT register  ********************/


/*******************  Bit definition for TIM_PSC register  ********************/


/*******************  Bit definition for TIM_ARR register  ********************/


/*******************  Bit definition for TIM_RCR register  ********************/


/*******************  Bit definition for TIM_CCR1 register  *******************/


/*******************  Bit definition for TIM_CCR2 register  *******************/


/*******************  Bit definition for TIM_CCR3 register  *******************/


/*******************  Bit definition for TIM_CCR4 register  *******************/


/*******************  Bit definition for TIM_BDTR register  *******************/
#line 2960 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"





#line 2971 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for TIM_DCR register  ********************/
#line 2979 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

#line 2986 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for TIM_DMAR register  *******************/


/*******************  Bit definition for TIM_OR register  *********************/




/******************************************************************************/
/*                                                                            */
/*      Universal Synchronous Asynchronous Receiver Transmitter (USART)       */
/*                                                                            */
/******************************************************************************/
/******************  Bit definition for USART_CR1 register  *******************/
#line 3031 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for USART_CR2 register  *******************/
#line 3055 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for USART_CR3 register  *******************/
#line 3081 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/******************  Bit definition for USART_BRR register  *******************/



/******************  Bit definition for USART_GTPR register  ******************/




/*******************  Bit definition for USART_RTOR register  *****************/



/*******************  Bit definition for USART_RQR register  ******************/






/*******************  Bit definition for USART_ISR register  ******************/
#line 3125 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for USART_ICR register  ******************/
#line 3139 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

/*******************  Bit definition for USART_RDR register  ******************/


/*******************  Bit definition for USART_TDR register  ******************/


/******************************************************************************/
/*                                                                            */
/*                         Window WATCHDOG (WWDG)                             */
/*                                                                            */
/******************************************************************************/

/*******************  Bit definition for WWDG_CR register  ********************/
#line 3161 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"



/*******************  Bit definition for WWDG_CFR register  *******************/
#line 3173 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"







/*******************  Bit definition for WWDG_SR register  ********************/


/**
  * @}
  */

 /**
  * @}
  */ 





/** @addtogroup Exported_macro
  * @{
  */
/**
  * @}
  */







/**
  * @}
  */

  /**
  * @}
  */

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 37 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f051_it.h"
// stm32f051_it.h




#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\stdbool.h"
/* stdbool.h header */
/* Copyright 2003-2017 IAR Systems AB.  */





  #pragma system_include













/*
 * Copyright (c) by P.J. Plauger. All rights reserved.
 * Consult your license regarding permissions and restrictions.
V6.50:0576 */
#line 7 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f051_it.h"




void  reset_isr           (void); // The reset handler
void  nm_isr              (void); // NMI Handler
void  fault_isr           (void); // Hard Fault Handler
void  int_default_handler (void); // Reserved
void  svc_handler         (void); // SVCall Handler
void  pend_sv_handler     (void); // PendSV Handler
void  systick_handler     (void); // SysTick Handler


static inline void  timer_reset     (uint32_t *timer);
static inline _Bool  timer_end       (uint32_t *timer, uint32_t delay);
static inline _Bool  timer_active    (uint32_t *timer, uint32_t delay);

static inline uint32_t	  system_time			(void);

extern volatile uint32_t system_timer;	// системный счётчик времени в мс.







/*******************************************************************************
* получение системного времени
*
*******************************************************************************/
static inline uint32_t system_time (void)
{
	return (system_timer);
}

/*******************************************************************************
* сброс таймера
*******************************************************************************/
static inline void timer_reset (uint32_t *timer)
{
  *timer = system_time ();
}

/*******************************************************************************
* условие срабатывания таймера
*******************************************************************************/
static inline _Bool timer_end (uint32_t *timer, uint32_t delay)
{
  return ((system_time () - *timer) >= delay);
}

/*******************************************************************************
* условие установленного таймера
*******************************************************************************/
static inline _Bool timer_active (uint32_t *timer, uint32_t delay)
{
  return ((system_time () - *timer) < delay);
}

#line 38 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\system_stm32f0xx.h"
/**
  ******************************************************************************
  * @file    system_stm32f0xx.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   CMSIS Cortex-M0 Device Peripheral Access Layer System Header File.
  ******************************************************************************  
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/** @addtogroup CMSIS
  * @{
  */

/** @addtogroup stm32f0xx_system
  * @{
  */  
  
/**
  * @brief Define to prevent recursive inclusion
  */







/** @addtogroup STM32F0xx_System_Includes
  * @{
  */

/**
  * @}
  */


/** @addtogroup STM32F0xx_System_Exported_types
  * @{
  */

extern uint32_t SystemCoreClock;          /*!< System Clock Frequency (Core Clock) */

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Exported_Constants
  * @{
  */

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Exported_Macros
  * @{
  */

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Exported_Functions
  * @{
  */
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);
/**
  * @}
  */







/**
  * @}
  */
  
/**
  * @}
  */  
/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 39 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_conf.h 
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   Library configuration file.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */ 

/* Define to prevent recursive inclusion -------------------------------------*/



/* Includes ------------------------------------------------------------------*/
/* Comment the line below to disable peripheral header file inclusion */
//#include "stm32f0xx_adc.h"
//#include "stm32f0xx_cec.h"
//#include "stm32f0xx_crc.h"
//#include "stm32f0xx_comp.h"
//#include "stm32f0xx_dac.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dbgmcu.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_dbgmcu.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file contains all the functions prototypes for the DBGMCU firmware 
  *          library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/







/* Includes ------------------------------------------------------------------*/


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @addtogroup DBGMCU
  * @{
  */ 
/* Exported types ------------------------------------------------------------*/ 
/* Exported constants --------------------------------------------------------*/


/** @defgroup DBGMCU_Exported_Constants
  * @{
  */





#line 65 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dbgmcu.h"







/**
  * @}
  */ 

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */ 

/* Device and Revision ID management functions ********************************/ 
uint32_t DBGMCU_GetREVID(void);
uint32_t DBGMCU_GetDEVID(void);

/* Peripherals Configuration functions ****************************************/ 
void DBGMCU_Config(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB1PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB2PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);







/**
  * @}
  */ 

/**
  * @}
  */ 

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 37 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dma.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_dma.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file contains all the functions prototypes for the DMA firmware
  *          library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/







/* Includes ------------------------------------------------------------------*/


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @addtogroup DMA
  * @{
  */
/* Exported types ------------------------------------------------------------*/

/** 
  * @brief  DMA Init structures definition
  */
typedef struct
{
  uint32_t DMA_PeripheralBaseAddr; /*!< Specifies the peripheral base address for DMAy Channelx.              */

  uint32_t DMA_MemoryBaseAddr;     /*!< Specifies the memory base address for DMAy Channelx.                  */

  uint32_t DMA_DIR;                /*!< Specifies if the peripheral is the source or destination.
                                        This parameter can be a value of @ref DMA_data_transfer_direction     */

  uint32_t DMA_BufferSize;         /*!< Specifies the buffer size, in data unit, of the specified Channel. 
                                        The data unit is equal to the configuration set in DMA_PeripheralDataSize
                                        or DMA_MemoryDataSize members depending in the transfer direction     */

  uint32_t DMA_PeripheralInc;      /*!< Specifies whether the Peripheral address register is incremented or not.
                                        This parameter can be a value of @ref DMA_peripheral_incremented_mode */

  uint32_t DMA_MemoryInc;          /*!< Specifies whether the memory address register is incremented or not.
                                        This parameter can be a value of @ref DMA_memory_incremented_mode     */

  uint32_t DMA_PeripheralDataSize; /*!< Specifies the Peripheral data width.
                                        This parameter can be a value of @ref DMA_peripheral_data_size        */

  uint32_t DMA_MemoryDataSize;     /*!< Specifies the Memory data width.
                                        This parameter can be a value of @ref DMA_memory_data_size            */

  uint32_t DMA_Mode;               /*!< Specifies the operation mode of the DMAy Channelx.
                                        This parameter can be a value of @ref DMA_circular_normal_mode
                                        @note: The circular buffer mode cannot be used if the memory-to-memory
                                              data transfer is configured on the selected Channel */

  uint32_t DMA_Priority;           /*!< Specifies the software priority for the DMAy Channelx.
                                        This parameter can be a value of @ref DMA_priority_level              */

  uint32_t DMA_M2M;                /*!< Specifies if the DMAy Channelx will be used in memory-to-memory transfer.
                                        This parameter can be a value of @ref DMA_memory_to_memory            */
}DMA_InitTypeDef;

/* Exported constants --------------------------------------------------------*/

/** @defgroup DMA_Exported_Constants
  * @{
  */







/** @defgroup DMA_data_transfer_direction 
  * @{
  */






/**
  * @}
  */

/** @defgroup DMA_peripheral_incremented_mode 
  * @{
  */






/**
  * @}
  */

/** @defgroup DMA_memory_incremented_mode 
  * @{
  */






/**
  * @}
  */

/** @defgroup DMA_peripheral_data_size 
  * @{
  */








/**
  * @}
  */

/** @defgroup DMA_memory_data_size 
  * @{
  */








/**
  * @}
  */

/** @defgroup DMA_circular_normal_mode 
  * @{
  */





/**
  * @}
  */

/** @defgroup DMA_priority_level 
  * @{
  */










/**
  * @}
  */

/** @defgroup DMA_memory_to_memory 
  * @{
  */






/**
  * @}
  */

/** @defgroup DMA_interrupts_definition
  * @{
  */







#line 239 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dma.h"



#line 252 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dma.h"

/**
  * @}
  */

/** @defgroup DMA_flags_definition 
  * @{
  */
#line 280 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dma.h"



#line 293 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dma.h"

/**
  * @}
  */

/** @defgroup DMA_Buffer_Size 
  * @{
  */



/**
  * @}
  */

/**
  * @}
  */

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */

/* Function used to set the DMA configuration to the default reset state ******/
void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);

/* Initialization and Configuration functions *********************************/
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);

/* Data Counter functions******************************************************/ 
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber);
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);

/* Interrupts and flags management functions **********************************/
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
FlagStatus DMA_GetFlagStatus(uint32_t DMA_FLAG);
void DMA_ClearFlag(uint32_t DMA_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMA_IT);
void DMA_ClearITPendingBit(uint32_t DMA_IT);







/**
  * @}
  */

/**
  * @}
  */

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 38 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"
//#include "stm32f0xx_exti.h"
//#include "stm32f0xx_flash.h"
//#include "stm32f0xx_gpio.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_syscfg.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_syscfg.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file contains all the functions prototypes for the SYSCFG firmware 
  *          library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/*!< Define to prevent recursive inclusion -------------------------------------*/







/*!< Includes ------------------------------------------------------------------*/


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @addtogroup SYSCFG
  * @{
  */
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/

/** @defgroup SYSCFG_Exported_Constants
  * @{
  */ 
  
/** @defgroup EXTI_Port_Sources 
  * @{
  */ 











/**
  * @}
  */

/** @defgroup EXTI_Pin_sources 
  * @{
  */ 
#line 88 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_syscfg.h"

#line 105 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_syscfg.h"
/**
  * @}
  */

/** @defgroup SYSCFG_Memory_Remap_Config 
  * @{
  */ 









/**
  * @}
  */

/** @defgroup SYSCFG_DMA_Remap_Config 
  * @{
  */ 





  






/**
  * @}
  */

/** @defgroup SYSCFG_I2C_FastModePlus_Config 
  * @{
  */ 










/**
  * @}
  */

/** @defgroup SYSCFG_Lock_Config 
  * @{
  */ 








/**
  * @}
  */

/** @defgroup SYSCFG_flags_definition 
  * @{
  */





/**
  * @}
  */

/**
  * @}
  */

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */

/*  Function used to set the SYSCFG configuration to the default reset state **/
void SYSCFG_DeInit(void);

/* SYSCFG configuration functions *********************************************/ 
void SYSCFG_MemoryRemapConfig(uint32_t SYSCFG_MemoryRemap);
void SYSCFG_DMAChannelRemapConfig(uint32_t SYSCFG_DMARemap, FunctionalState NewState);
void SYSCFG_I2CFastModePlusConfig(uint32_t SYSCFG_I2CFastModePlus, FunctionalState NewState);
void SYSCFG_EXTILineConfig(uint8_t EXTI_PortSourceGPIOx, uint8_t EXTI_PinSourcex);
void SYSCFG_BreakConfig(uint32_t SYSCFG_Break);
FlagStatus SYSCFG_GetFlagStatus(uint32_t SYSCFG_Flag);
void SYSCFG_ClearFlag(uint32_t SYSCFG_Flag);







/**
  * @}
  */ 

/**
  * @}
  */ 

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 42 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"
//#include "stm32f0xx_i2c.h"
//#include "stm32f0xx_iwdg.h"
//#include "stm32f0xx_pwr.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_rcc.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file contains all the functions prototypes for the RCC 
  *          firmware library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/







/* Includes ------------------------------------------------------------------*/


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @addtogroup RCC
  * @{
  */

/* Exported types ------------------------------------------------------------*/

typedef struct
{
  uint32_t SYSCLK_Frequency;
  uint32_t HCLK_Frequency;
  uint32_t PCLK_Frequency;
  uint32_t ADCCLK_Frequency;
  uint32_t CECCLK_Frequency;
  uint32_t I2C1CLK_Frequency;
  uint32_t USART1CLK_Frequency;
}RCC_ClocksTypeDef;

/* Exported constants --------------------------------------------------------*/

/** @defgroup RCC_Exported_Constants
  * @{
  */

/** @defgroup RCC_HSE_configuration 
  * @{
  */







/**
  * @}
  */ 
 
/** @defgroup RCC_PLL_Clock_Source 
  * @{
  */



 


/**
  * @}
  */ 

/** @defgroup RCC_PLL_Multiplication_Factor 
  * @{
  */

#line 118 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  * @}
  */

/** @defgroup RCC_PREDIV1_division_factor
  * @{
  */
#line 141 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"

#line 150 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  * @}
  */
 
/** @defgroup RCC_System_Clock_Source 
  * @{
  */

#line 164 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  * @}
  */

/** @defgroup RCC_AHB_Clock_Source
  * @{
  */

#line 186 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  * @}
  */ 

/** @defgroup RCC_APB_Clock_Source
  * @{
  */

#line 202 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  * @}
  */
  
/** @defgroup RCC_ADC_clock_source 
  * @{
  */








/**
  * @}
  */

/** @defgroup RCC_CEC_clock_source 
  * @{
  */






/**
  * @}
  */

/** @defgroup RCC_I2C_clock_source 
  * @{
  */






/**
  * @}
  */

/** @defgroup RCC_USART_clock_source 
  * @{
  */









/**
  * @}
  */
       
/** @defgroup RCC_Interrupt_Source 
  * @{
  */

#line 274 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"










/**
  * @}
  */
  
/** @defgroup RCC_LSE_Configuration 
  * @{
  */






/**
  * @}
  */

/** @defgroup RCC_RTC_Clock_Source
  * @{
  */








/**
  * @}
  */

/** @defgroup RCC_LSE_Drive_Configuration 
  * @{
  */

#line 326 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"
/**
  * @}
  */
  
/** @defgroup RCC_AHB_Peripherals 
  * @{
  */

#line 344 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"




/**
  * @}
  */

/** @defgroup RCC_APB2_Peripherals 
  * @{
  */

#line 365 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"



/**
  * @}
  */ 

/** @defgroup RCC_APB1_Peripherals 
  * @{
  */

#line 388 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"


/**
  * @}
  */

/** @defgroup RCC_MCO_Clock_Source
  * @{
  */

#line 404 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"




/**
  * @}
  */ 

/** @defgroup RCC_Flag 
  * @{
  */
#line 428 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"

#line 436 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_rcc.h"




/**
  * @}
  */

/**
  * @}
  */

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */

/* Function used to set the RCC clock configuration to the default reset state */
void RCC_DeInit(void);

/* Internal/external clocks, PLL, CSS and MCO configuration functions *********/
void RCC_HSEConfig(uint8_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_AdjustHSI14CalibrationValue(uint8_t HSI14CalibrationValue);
void RCC_HSI14Cmd(FunctionalState NewState);
void RCC_HSI14ADCRequestCmd(FunctionalState NewState);
void RCC_LSEConfig(uint32_t RCC_LSE);
void RCC_LSEDriveConfig(uint32_t RCC_LSEDrive);
void RCC_LSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);
void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Div);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCOSource);

/* System, AHB and APB busses clocks configuration functions ******************/
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLKConfig(uint32_t RCC_HCLK);
void RCC_ADCCLKConfig(uint32_t RCC_ADCCLK);
void RCC_CECCLKConfig(uint32_t RCC_CECCLK);
void RCC_I2CCLKConfig(uint32_t RCC_I2CCLK);
void RCC_USARTCLKConfig(uint32_t RCC_USARTCLK);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);

/* Peripheral clocks configuration functions **********************************/
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);

void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);

void RCC_AHBPeriphResetCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);

/* Interrupts and flags management functions **********************************/
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);







/**
  * @}
  */

/**
  * @}
  */ 

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 46 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"
//#include "stm32f0xx_rtc.h"
//#include "stm32f0xx_spi.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_tim.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file contains all the functions prototypes for the TIM 
  *          firmware library. 
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/







/* Includes ------------------------------------------------------------------*/


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @addtogroup TIM
  * @{
  */ 

/* Exported types ------------------------------------------------------------*/

/** 
  * @brief  TIM Time Base Init structure definition
  * @note   This sturcture is used with all TIMx.
  */

typedef struct
{
  uint16_t TIM_Prescaler;         /*!< Specifies the prescaler value used to divide the TIM clock.
                                       This parameter can be a number between 0x0000 and 0xFFFF */

  uint16_t TIM_CounterMode;       /*!< Specifies the counter mode.
                                       This parameter can be a value of @ref TIM_Counter_Mode */

  uint32_t TIM_Period;            /*!< Specifies the period value to be loaded into the active
                                       Auto-Reload Register at the next update event.
                                       This parameter must be a number between 0x0000 and 0xFFFF.  */ 

  uint16_t TIM_ClockDivision;     /*!< Specifies the clock division.
                                      This parameter can be a value of @ref TIM_Clock_Division_CKD */

  uint8_t TIM_RepetitionCounter;  /*!< Specifies the repetition counter value. Each time the RCR downcounter
                                       reaches zero, an update event is generated and counting restarts
                                       from the RCR value (N).
                                       This means in PWM mode that (N+1) corresponds to:
                                          - the number of PWM periods in edge-aligned mode
                                          - the number of half PWM period in center-aligned mode
                                       This parameter must be a number between 0x00 and 0xFF. 
                                       @note This parameter is valid only for TIM1. */
} TIM_TimeBaseInitTypeDef;       

/** 
  * @brief  TIM Output Compare Init structure definition  
  */

typedef struct
{
  uint16_t TIM_OCMode;        /*!< Specifies the TIM mode.
                                   This parameter can be a value of @ref TIM_Output_Compare_and_PWM_modes */

  uint16_t TIM_OutputState;   /*!< Specifies the TIM Output Compare state.
                                   This parameter can be a value of @ref TIM_Output_Compare_state */

  uint16_t TIM_OutputNState;  /*!< Specifies the TIM complementary Output Compare state.
                                   This parameter can be a value of @ref TIM_Output_Compare_N_state
                                   @note This parameter is valid only for TIM1. */

  uint32_t TIM_Pulse;         /*!< Specifies the pulse value to be loaded into the Capture Compare Register. 
                                   This parameter can be a number between 0x0000 and 0xFFFF ( or 0xFFFFFFFF 
                                   for TIM2) */

  uint16_t TIM_OCPolarity;    /*!< Specifies the output polarity.
                                   This parameter can be a value of @ref TIM_Output_Compare_Polarity */

  uint16_t TIM_OCNPolarity;   /*!< Specifies the complementary output polarity.
                                   This parameter can be a value of @ref TIM_Output_Compare_N_Polarity
                                   @note This parameter is valid only for TIM1. */

  uint16_t TIM_OCIdleState;   /*!< Specifies the TIM Output Compare pin state during Idle state.
                                   This parameter can be a value of @ref TIM_Output_Compare_Idle_State
                                   @note This parameter is valid only for TIM1. */

  uint16_t TIM_OCNIdleState;  /*!< Specifies the TIM Output Compare pin state during Idle state.
                                   This parameter can be a value of @ref TIM_Output_Compare_N_Idle_State
                                   @note This parameter is valid only for TIM1. */
} TIM_OCInitTypeDef;

/** 
  * @brief  TIM Input Capture Init structure definition  
  */

typedef struct
{

  uint16_t TIM_Channel;      /*!< Specifies the TIM channel.
                                  This parameter can be a value of @ref TIM_Channel */

  uint16_t TIM_ICPolarity;   /*!< Specifies the active edge of the input signal.
                                  This parameter can be a value of @ref TIM_Input_Capture_Polarity */

  uint16_t TIM_ICSelection;  /*!< Specifies the input.
                                  This parameter can be a value of @ref TIM_Input_Capture_Selection */

  uint16_t TIM_ICPrescaler;  /*!< Specifies the Input Capture Prescaler.
                                  This parameter can be a value of @ref TIM_Input_Capture_Prescaler */

  uint16_t TIM_ICFilter;     /*!< Specifies the input capture filter.
                                  This parameter can be a number between 0x0 and 0xF */
} TIM_ICInitTypeDef;

/** 
  * @brief  TIM_BDTR structure definition 
  * @note   This sturcture is used only with TIM1.    
  */

typedef struct
{

  uint16_t TIM_OSSRState;        /*!< Specifies the Off-State selection used in Run mode.
                                      This parameter can be a value of @ref TIM_OSSR_Off_State_Selection_for_Run_mode_state */

  uint16_t TIM_OSSIState;        /*!< Specifies the Off-State used in Idle state.
                                      This parameter can be a value of @ref TIM_OSSI_Off_State_Selection_for_Idle_mode_state */

  uint16_t TIM_LOCKLevel;        /*!< Specifies the LOCK level parameters.
                                      This parameter can be a value of @ref TIM_Lock_level */ 

  uint16_t TIM_DeadTime;         /*!< Specifies the delay time between the switching-off and the
                                      switching-on of the outputs.
                                      This parameter can be a number between 0x00 and 0xFF  */

  uint16_t TIM_Break;            /*!< Specifies whether the TIM Break input is enabled or not. 
                                      This parameter can be a value of @ref TIM_Break_Input_enable_disable */

  uint16_t TIM_BreakPolarity;    /*!< Specifies the TIM Break Input pin polarity.
                                      This parameter can be a value of @ref TIM_Break_Polarity */

  uint16_t TIM_AutomaticOutput;  /*!< Specifies whether the TIM Automatic Output feature is enabled or not. 
                                      This parameter can be a value of @ref TIM_AOE_Bit_Set_Reset */
} TIM_BDTRInitTypeDef;

/** 
  * @brief  TIM Input Capture Init structure definition  
  */

/* Exported constants --------------------------------------------------------*/

  
/** @defgroup TIM_Exported_constants 
  * @{
  */

#line 186 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/* LIST1: TIM 1 */


/* LIST2: TIM 1, 15, 16 and 17 */





/* LIST3: TIM 1, 2 and 3 */




/* LIST4: TIM 1, 2, 3, 14, 15, 16 and 17 */
#line 209 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/* LIST4: TIM 1, 2, 3, 15, 16 and 17 */
#line 217 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/* LIST5: TIM 1, 2, 3 and 15 */





/* LIST7: TIM 1, 2, 3, 6 and 14 */





                                      
/* LIST8: TIM 1, 2, 3 and 14 */





/* LIST9: TIM 1, 2, 3, 6 and 15 */






/* LIST10: TIM 1, 2, 3, 6, 15, 16 and 17 */
#line 252 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/* LIST1: TIM 11 */

                                     

/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_and_PWM_modes 
  * @{
  */

#line 285 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */

/** @defgroup TIM_One_Pulse_Mode 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Channel 
  * @{
  */






#line 319 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/**
  * @}
  */ 

/** @defgroup TIM_Clock_Division_CKD 
  * @{
  */

#line 334 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */

/** @defgroup TIM_Counter_Mode 
  * @{
  */

#line 352 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_Polarity 
  * @{
  */





/**
  * @}
  */

/** @defgroup TIM_Output_Compare_N_Polarity 
  * @{
  */
  




/**
  * @}
  */

/** @defgroup TIM_Output_Compare_state
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_N_state 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Capture_Compare_state 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Capture_Compare_N_state 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Break_Input_enable_disable 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Break_Polarity 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_AOE_Bit_Set_Reset 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Lock_level 
  * @{
  */

#line 476 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_OSSI_Off_State_Selection_for_Idle_mode_state 
  * @{
  */





/**
  * @}
  */

/** @defgroup TIM_OSSR_Off_State_Selection_for_Run_mode_state 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_Idle_State 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_N_Idle_State 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Input_Capture_Polarity 
  * @{
  */

#line 538 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Input_Capture_Selection 
  * @{
  */

#line 554 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Input_Capture_Prescaler 
  * @{
  */

#line 570 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_interrupt_sources 
  * @{
  */

#line 587 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

#line 596 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_DMA_Base_address 
  * @{
  */

#line 643 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 


/** @defgroup TIM_DMA_Burst_Length 
  * @{
  */

#line 688 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_DMA_sources 
  * @{
  */

#line 704 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/**
  * @}
  */ 

/** @defgroup TIM_External_Trigger_Prescaler 
  * @{
  */

#line 721 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Internal_Trigger_Selection 
  * @{
  */

#line 749 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_TIx_External_Clock_Source 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_External_Trigger_Polarity 
  * @{
  */ 




/**
  * @}
  */

/** @defgroup TIM_Prescaler_Reload_Mode 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Forced_Action 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Encoder_Mode 
  * @{
  */

#line 810 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 


/** @defgroup TIM_Event_Source 
  * @{
  */

#line 828 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"

/**
  * @}
  */ 

/** @defgroup TIM_Update_Source 
  * @{
  */

#line 843 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_Preload_State 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_Fast_State 
  * @{
  */





                                     
/**
  * @}
  */ 

/** @defgroup TIM_Output_Compare_Clear_State 
  * @{
  */





/**
  * @}
  */ 

/** @defgroup TIM_Trigger_Output_Source 
  * @{
  */

#line 904 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Slave_Mode 
  * @{
  */

#line 920 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */ 

/** @defgroup TIM_Master_Slave_Mode 
  * @{
  */





/**
  * @}
  */ 
  
/** @defgroup TIM_Flags 
  * @{
  */

#line 964 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
                               
                               

/**
  * @}
  */ 


/** @defgroup TIM_Input_Capture_Filer_Value 
  * @{
  */


/**
  * @}
  */ 

/** @defgroup TIM_External_Trigger_Filter 
  * @{
  */


/**
  * @}
  */

/** @defgroup TIM_OCReferenceClear 
  * @{
  */





/**
  * @}
  */
/** @defgroup TIM_Remap 
  * @{
  */





/**
  * @}
  */

/** @defgroup TIM_Legacy 
  * @{
  */

#line 1035 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_tim.h"
/**
  * @}
  */

/**
  * @}
  */
  
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */ 

/* TimeBase management ********************************************************/
void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint32_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint32_t Autoreload);
uint32_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);

/* Advanced-control timers (TIM1) specific features*******************/
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);

/* Output Compare management **************************************************/
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint32_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint32_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint32_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint32_t Compare4);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_SelectOCREFClear(TIM_TypeDef* TIMx, uint16_t TIM_OCReferenceClear);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);

/* Input Capture management ***************************************************/
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
uint32_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture4(TIM_TypeDef* TIMx);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);

/* Interrupts, DMA and flags management ***************************************/
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);

/* Clocks management **********************************************************/
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);


/* Synchronization management *************************************************/
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);

/* Specific interface management **********************************************/                   
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);

/* Specific remapping management **********************************************/
void TIM_RemapConfig(TIM_TypeDef* TIMx, uint16_t TIM_Remap);








/**
  * @}
  */ 

/**
  * @}
  */

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 49 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"
//#include "stm32f0xx_usart.h"
//#include "stm32f0xx_wwdg.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_misc.h"
/**
  ******************************************************************************
  * @file    stm32f0xx_misc.h
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file contains all the functions prototypes for the miscellaneous
  *          firmware library functions (add-on to CMSIS functions).
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/







/* Includes ------------------------------------------------------------------*/


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @addtogroup MISC
  * @{
  */

/* Exported types ------------------------------------------------------------*/

/** 
  * @brief  NVIC Init Structure definition  
  */

typedef struct
{
  uint8_t NVIC_IRQChannel;             /*!< Specifies the IRQ channel to be enabled or disabled.
                                            This parameter can be a value of @ref IRQn_Type 
                                            (For the complete STM32 Devices IRQ Channels list, 
                                            please refer to stm32f0xx.h file) */

  uint8_t NVIC_IRQChannelPriority;     /*!< Specifies the priority level for the IRQ channel specified
                                            in NVIC_IRQChannel. This parameter can be a value
                                            between 0 and 3.  */

  FunctionalState NVIC_IRQChannelCmd;  /*!< Specifies whether the IRQ channel defined in NVIC_IRQChannel
                                            will be enabled or disabled. 
                                            This parameter can be set either to ENABLE or DISABLE */   
} NVIC_InitTypeDef;

/**  
  *
@verbatim   

@endverbatim
*/

/* Exported constants --------------------------------------------------------*/

/** @defgroup MISC_Exported_Constants
  * @{
  */

/** @defgroup System_Low_Power 
  * @{
  */

#line 90 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_misc.h"
/**
  * @}
  */

/** @defgroup Preemption_Priority_Group 
  * @{
  */


/**
  * @}
  */

/** @defgroup SysTick_clock_source 
  * @{
  */





/**
  * @}
  */

/**
  * @}
  */

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */ 

void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);







/**
  * @}
  */

/**
  * @}
  */

/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 52 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx_conf.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Uncomment the line below to expanse the "assert_param" macro in the 
   Standard Peripheral Library drivers code */


/* Exported macro ------------------------------------------------------------*/


/**
  * @brief  The assert_param macro is used for function's parameters check.
  * @param  expr: If expr is false, it calls assert_failed function which reports 
  *         the name of the source file and the source line number of the call 
  *         that failed. If expr is true, it returns no value.
  * @retval None
  */

/* Exported functions ------------------------------------------------------- */
  void assert_failed(uint8_t* file, uint32_t line);






/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
#line 40 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"
/**************************************************************************//**
 * @file     core_cm0.h
 * @brief    CMSIS Cortex-M0 Core Peripheral Access Layer Header File
 * @version  V2.10
 * @date     19. July 2011
 *
 * @note
 * Copyright (C) 2009-2011 ARM Limited. All rights reserved.
 *
 * @par
 * ARM Limited (ARM) is supplying this software for use with Cortex-M
 * processor based microcontrollers.  This file can be freely distributed
 * within development tools that are supporting such ARM based processors.
 *
 * @par
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 ******************************************************************************/

 #pragma system_include  /* treat file as system include file for MISRA check */










/** \mainpage CMSIS Cortex-M0

  This documentation describes the CMSIS Cortex-M Core Peripheral Access Layer.
  It consists of:

     - Cortex-M Core Register Definitions
     - Cortex-M functions
     - Cortex-M instructions

  The CMSIS Cortex-M0 Core Peripheral Access Layer contains C and assembly functions that ease
  access to the Cortex-M Core
 */

/** \defgroup CMSIS_MISRA_Exceptions  CMSIS MISRA-C:2004 Compliance Exceptions
  CMSIS violates following MISRA-C2004 Rules:
  
   - Violates MISRA 2004 Required Rule 8.5, object/function definition in header file.<br>
     Function definitions in header files are used to allow 'inlining'. 

   - Violates MISRA 2004 Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
     Unions are used for effective representation of core registers.
   
   - Violates MISRA 2004 Advisory Rule 19.7, Function-like macro defined.<br>
     Function-like macros are used to allow more efficient code. 

 */


/*******************************************************************************
 *                 CMSIS definitions
 ******************************************************************************/
/** \defgroup CMSIS_core_definitions CMSIS Core Definitions
  This file defines all structures and symbols for CMSIS core:
   - CMSIS version number
   - Cortex-M core
   - Cortex-M core Revision Number
  @{
 */

/*  CMSIS CM0 definitions */







#line 89 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"

#line 99 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"

/*!< __FPU_USED to be checked prior to making use of FPU specific registers and functions */


#line 111 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"

#line 120 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"

#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmInstr.h"
/**************************************************************************//**
 * @file     core_cmInstr.h
 * @brief    CMSIS Cortex-M Core Instruction Access Header File
 * @version  V2.10
 * @date     19. July 2011
 *
 * @note
 * Copyright (C) 2009-2011 ARM Limited. All rights reserved.
 *
 * @par
 * ARM Limited (ARM) is supplying this software for use with Cortex-M 
 * processor based microcontrollers.  This file can be freely distributed 
 * within development tools that are supporting such ARM based processors. 
 *
 * @par
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 ******************************************************************************/





/* ##########################  Core Instruction Access  ######################### */
/** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  Access to dedicated instructions
  @{
*/

#line 257 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmInstr.h"
/* IAR iccarm specific functions */

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"
//------------------------------------------------------------------------------
//
// Copyright (c) 2017 IAR Systems
//
// Licensed under the Apache License, Version 2.0 (the "License")
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//------------------------------------------------------------------------------
 
 











#pragma system_include







/* Define compiler macros for CPU architecture, used in CMSIS 5.
 */
#line 59 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"
 
 
#line 68 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"
 


































  #pragma language=save
  #pragma language=extended
  _Pragma("inline=forced") __intrinsic uint16_t __iar_uint16_read(void const *ptr) {
    return *(__packed uint16_t*)(ptr);
  }
  #pragma language=restore





  #pragma language=save
  #pragma language=extended
  _Pragma("inline=forced") __intrinsic void __iar_uint16_write(void const *ptr, uint16_t val) {
    *(__packed uint16_t*)(ptr) = val;;
  }
  #pragma language=restore




  #pragma language=save
  #pragma language=extended
  _Pragma("inline=forced") __intrinsic uint32_t __iar_uint32_read(void const *ptr) {
    return *(__packed uint32_t*)(ptr);
  }
  #pragma language=restore




  #pragma language=save
  #pragma language=extended
  _Pragma("inline=forced") __intrinsic void __iar_uint32_write(void const *ptr, uint32_t val) {
    *(__packed uint32_t*)(ptr) = val;;
  }
  #pragma language=restore




  #pragma language=save
  #pragma language=extended
  __packed struct  __iar_u32 { uint32_t v; };
  #pragma language=restore












#line 175 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"

#line 1 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\iccarm_builtin.h"
/**************************************************
 *
 * This file declares the ICCARM builtin functions.
 *
 * Copyright 1999-2017 IAR Systems. All rights reserved.
 *
 * $Revision: 122514 $
 *
 **************************************************/







  #pragma system_include


/*
 * Check that the correct C compiler is used.
 */





/* Define function effects for intrinsics */









#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __iar_builtin_no_operation(void);

__intrinsic __nounwind void    __iar_builtin_disable_interrupt(void);
__intrinsic __nounwind void    __iar_builtin_enable_interrupt(void);

typedef unsigned int __istate_t;

__intrinsic __nounwind __istate_t __iar_builtin_get_interrupt_state(void);
__intrinsic __nounwind void __iar_builtin_set_interrupt_state(__istate_t);

/* System control access for Cortex-M cores */
__intrinsic __nounwind unsigned int __iar_builtin_get_PSR( void );
__intrinsic __nounwind unsigned int __iar_builtin_get_IPSR( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_get_MSP( void );
__intrinsic __nounwind void         __iar_builtin_set_MSP( unsigned int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_get_PSP( void );
__intrinsic __nounwind void         __iar_builtin_set_PSP( unsigned int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_get_PRIMASK( void );
__intrinsic __nounwind void         __iar_builtin_set_PRIMASK( unsigned int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_get_CONTROL( void );
__intrinsic __nounwind void         __iar_builtin_set_CONTROL( unsigned int );

/* These are only available for v7M */
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_get_FAULTMASK( void );
__intrinsic __nounwind void         __iar_builtin_set_FAULTMASK(unsigned int);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_get_BASEPRI( void );
__intrinsic __nounwind void         __iar_builtin_set_BASEPRI( unsigned int );

/* "Old" style intrerrupt control routines */
__intrinsic __nounwind void __iar_builtin_disable_irq(void);
__intrinsic __nounwind void __iar_builtin_enable_irq(void);

__intrinsic __nounwind void __iar_builtin_disable_fiq(void);
__intrinsic __nounwind void __iar_builtin_enable_fiq(void);


/* ARM-mode intrinsics */

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SWP( unsigned int, volatile unsigned int * );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned char __iar_builtin_SWPB( unsigned char, volatile unsigned char * );

typedef unsigned int __ul;
typedef unsigned int __iar_builtin_uint;






/*  Co-processor operations */

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __iar_builtin_CDP (unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) opc1, unsigned __constrange(0,15) CRd, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __iar_builtin_CDP2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) opc1, unsigned __constrange(0,15) CRd, unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opc2) ;

/*  Co-processor access */
__intrinsic __nounwind void          __iar_builtin_MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __iar_builtin_uint src,
                                unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 )  ;
__intrinsic __nounwind unsigned int __iar_builtin_MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 )  ;
__intrinsic __nounwind void          __iar_builtin_MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __iar_builtin_uint src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 ) ;
__intrinsic __nounwind unsigned int __iar_builtin_MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 ) ;

__intrinsic __nounwind void __iar_builtin_MCRR (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned long long src, unsigned __constrange(0,15) CRm) ;
__intrinsic __nounwind void __iar_builtin_MCRR2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned long long src, unsigned __constrange(0,15) CRm) ;

__intrinsic __nounwind unsigned long long __iar_builtin_MRRC (unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRm) ;
__intrinsic __nounwind unsigned long long __iar_builtin_MRRC2(unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opc1, unsigned __constrange(0,15) CRm) ;

/* Load coprocessor register. */
__intrinsic __nounwind void __iar_builtin_LDC  ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src) ;
__intrinsic __nounwind void __iar_builtin_LDCL ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src) ;
__intrinsic __nounwind void __iar_builtin_LDC2 ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src) ;
__intrinsic __nounwind void __iar_builtin_LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src) ;

/* Store coprocessor register. */
__intrinsic __nounwind void __iar_builtin_STC  ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst) ;
__intrinsic __nounwind void __iar_builtin_STCL ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst) ;
__intrinsic __nounwind void __iar_builtin_STC2 ( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst) ;
__intrinsic __nounwind void __iar_builtin_STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst) ;

/* Load coprocessor register (noindexed version with coprocessor option). */
__intrinsic __nounwind void __iar_builtin_LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __iar_builtin_LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __iar_builtin_LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __iar_builtin_LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint const *src,
                                unsigned __constrange(0,255) option);

/* Store coprocessor register (version with coprocessor option). */
__intrinsic __nounwind void __iar_builtin_STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __iar_builtin_STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __iar_builtin_STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __iar_builtin_STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __iar_builtin_uint *dst,
                                unsigned __constrange(0,255) option);



/* Reads a system register */
__intrinsic __nounwind unsigned int       __iar_builtin_rsr(__spec_string const char * special_register)   ;
__intrinsic __nounwind unsigned long long __iar_builtin_rsr64(__spec_string const char * special_register) ;
__intrinsic __nounwind void*              __iar_builtin_rsrp(__spec_string const char * special_register)  ;

/* Writes a system register */
__intrinsic __nounwind void __iar_builtin_wsr(__spec_string const char * special_register, unsigned int value)         ;
__intrinsic __nounwind void __iar_builtin_wsr64(__spec_string const char * special_register, unsigned long long value) ;
__intrinsic __nounwind void __iar_builtin_wsrp(__spec_string const char * special_register, const void *value)         ;

/* Status register access, v7M: */
__intrinsic __nounwind unsigned int __iar_builtin_get_APSR( void );
__intrinsic __nounwind void         __iar_builtin_set_APSR( unsigned int );

/* Status register access */
__intrinsic __nounwind unsigned int __iar_builtin_get_CPSR( void );
__intrinsic __nounwind void         __iar_builtin_set_CPSR( unsigned int );

/* Floating-point status and control register access */
__intrinsic __nounwind unsigned int __iar_builtin_get_FPSCR( void );
__intrinsic __nounwind void __iar_builtin_set_FPSCR( unsigned int );

/* Architecture v5T, CLZ is also available in Thumb mode for Thumb2 cores */
/* For other architecture an instruction sequence is emitted */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CLZ(unsigned int) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_ROR(unsigned int, unsigned int) ;
__intrinsic __nounwind unsigned int __iar_builtin_RRX(unsigned int);

/* Architecture v5TE or profile M with DSP-extension */
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_QADD( signed int, signed int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_QDADD( signed int, signed int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_QSUB( signed int, signed int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_QDSUB( signed int, signed int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_QDOUBLE( signed int );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int         __iar_builtin_QFlag( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __iar_builtin_reset_Q_flag( void );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int         __iar_builtin_QCFlag( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __iar_builtin_reset_QC_flag( void );

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_SMUL( signed short, signed short );

/* Architecture v6, REV and REVSH are also available in thumb mode */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_REV( unsigned int );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind signed int __iar_builtin_REVSH( short );

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_REV16( unsigned int );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_RBIT( unsigned int );

_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned char  __iar_builtin_LDREXB( volatile unsigned char const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned short __iar_builtin_LDREXH( volatile unsigned short const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned int  __iar_builtin_LDREX ( volatile unsigned int const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned long long __iar_builtin_LDREXD( volatile unsigned long long const * );

_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned int  __iar_builtin_STREXB( unsigned char, volatile unsigned char * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned int  __iar_builtin_STREXH( unsigned short, volatile unsigned short * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned int  __iar_builtin_STREX ( unsigned int, volatile unsigned int * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned int  __iar_builtin_STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __iar_builtin_CLREX( void );

__intrinsic __nounwind void __iar_builtin_SEV( void );
__intrinsic __nounwind void __iar_builtin_WFE( void );
__intrinsic __nounwind void __iar_builtin_WFI( void );
__intrinsic __nounwind void __iar_builtin_YIELD( void );

__intrinsic __nounwind void __iar_builtin_PLI( volatile void const * );
__intrinsic __nounwind void __iar_builtin_PLD( volatile void const * );
__intrinsic __nounwind void __iar_builtin_PLDW( volatile void const * );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind   signed int   __iar_builtin_SSAT     (signed int val,
                                      unsigned int __constrange( 1, 32 ) sat );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind   unsigned int __iar_builtin_USAT     (signed int val,
                                      unsigned int __constrange( 0, 31 ) sat );

/* Architecture v6 Media instructions */
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SEL( unsigned int op1, unsigned int op2 );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SADD8    (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SADD16   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SSUB8    (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SSUB16   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SADDSUBX (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SSUBADDX (unsigned int pair1, unsigned int pair2);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHADD8   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHADD16  (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHSUB8   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHSUB16  (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHADDSUBX(unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHSUBADDX(unsigned int pair1, unsigned int pair2);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QADD8    (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QADD16   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QSUB8    (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QSUB16   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QADDSUBX (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QSUBADDX (unsigned int pair1, unsigned int pair2);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UADD8    (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UADD16   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USUB8    (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USUB16   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UADDSUBX (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USUBADDX (unsigned int pair1, unsigned int pair2);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHADD8   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHADD16  (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHSUB8   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHSUB16  (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHADDSUBX(unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHSUBADDX(unsigned int pair1, unsigned int pair2);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQADD8   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQADD16  (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQSUB8   (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQSUB16  (unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQADDSUBX(unsigned int pair1, unsigned int pair2);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQSUBADDX(unsigned int pair1, unsigned int pair2);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USAD8(unsigned int x, unsigned int y );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USADA8(unsigned int x, unsigned int y,
                                   unsigned int acc );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SSAT16   (unsigned int pair,
                                      unsigned int __constrange( 1, 16 ) sat );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USAT16   (unsigned int pair,
                                      unsigned int __constrange( 0, 15 ) sat );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMUAD (unsigned int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMUSD (unsigned int x, unsigned int y);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMUADX(unsigned int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMUSDX(unsigned int x, unsigned int y);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLAD (unsigned int x, unsigned int y, int sum);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLSD (unsigned int x, unsigned int y, int sum);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLADX(unsigned int x, unsigned int y, int sum);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLSDX(unsigned int x, unsigned int y, int sum);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLALD (unsigned int pair1,
                                 unsigned int pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLALDX(unsigned int pair1,
                                 unsigned int pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLSLD (unsigned int pair1,
                                 unsigned int pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLSLDX(unsigned int pair1,
                                 unsigned int pair2,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_PKHBT(unsigned int x,
                                  unsigned int y,
                                  unsigned __constrange(0,31) count);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_PKHTB(unsigned int x,
                                  unsigned int y,
                                  unsigned __constrange(0,32) count);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLABB(unsigned int x, unsigned int y, int acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLABT(unsigned int x, unsigned int y, int acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLATB(unsigned int x, unsigned int y, int acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLATT(unsigned int x, unsigned int y, int acc);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLAWB(int x, unsigned int y, int acc);
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMLAWT(int x, unsigned int y, int acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMMLA (int x, int y, int acc);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMMLAR(int x, int y, int acc);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMMLS (int x, int y, int acc);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMMLSR(int x, int y, int acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMMUL (int x, int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMMULR(int x, int y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMULBB(unsigned int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMULBT(unsigned int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMULTB(unsigned int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMULTT(unsigned int x, unsigned int y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMULWB(int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SMULWT(int x, unsigned int y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SXTAB (int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind int __iar_builtin_SXTAH (int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UXTAB (unsigned int x, unsigned int y);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UXTAH (unsigned int x, unsigned int y);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long long __iar_builtin_UMAAL(unsigned int x,
                                       unsigned int y,
                                       unsigned int a,
                                       unsigned int b);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLALBB(unsigned int x,
                                 unsigned int y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLALBT(unsigned int x,
                                 unsigned int y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLALTB(unsigned int x,
                                 unsigned int y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind long long __iar_builtin_SMLALTT(unsigned int x,
                                 unsigned int y,
                                 long long acc);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UXTB16(unsigned int x);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UXTAB16(unsigned int acc, unsigned int x);

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SXTB16(unsigned int x);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SXTAB16(unsigned int acc, unsigned int x);

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SASX(unsigned int, unsigned int) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SSAX(unsigned int, unsigned int) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHASX(unsigned int, unsigned int) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_SHSAX(unsigned int, unsigned int) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QASX(unsigned int, unsigned int) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_QSAX(unsigned int, unsigned int) ;

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UASX(unsigned int, unsigned int) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_USAX(unsigned int, unsigned int) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHASX(unsigned int, unsigned int) ;
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UHSAX(unsigned int, unsigned int) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQASX(unsigned int, unsigned int) ;
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_UQSAX(unsigned int, unsigned int) ;

/* Architecture v7 instructions */
__intrinsic __nounwind void __iar_builtin_DMB(void);
__intrinsic __nounwind void __iar_builtin_DSB(void);
__intrinsic __nounwind void __iar_builtin_ISB(void);

/* Architecture v8-M instructions */
__intrinsic __nounwind unsigned int __iar_builtin_TT(unsigned int);
__intrinsic __nounwind unsigned int __iar_builtin_TTT(unsigned int);
__intrinsic __nounwind unsigned int __iar_builtin_TTA(unsigned int);
__intrinsic __nounwind unsigned int __iar_builtin_TTAT(unsigned int);

__intrinsic __nounwind unsigned int __get_LR(void);
__intrinsic __nounwind void __set_LR(unsigned int);

__intrinsic __nounwind unsigned int __get_SP(void);
__intrinsic __nounwind void __set_SP(unsigned int);

/* VFP: sqrt */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VSQRT_F32(float x);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VSQRT_F64(double x);

/* VFPv4: fused mac */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VFMA_F32(float x, float y, float z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VFMS_F32(float x, float y, float z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VFNMA_F32(float x, float y, float z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VFNMS_F32(float x, float y, float z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VFMA_F64(double x, double y, double z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VFMS_F64(double x, double y, double z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VFNMA_F64(double x, double y, double z);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VFNMS_F64(double x, double y, double z);

/* Architecture v8-A/R: CRC extension */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CRC32B(unsigned int crc, unsigned char data);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CRC32H(unsigned int crc, unsigned short data);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CRC32W(unsigned int crc, unsigned int data);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CRC32CB(unsigned int crc, unsigned char data);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CRC32CH(unsigned int crc, unsigned short data);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned int __iar_builtin_CRC32CW(unsigned int crc, unsigned int data);

/* VFPv5: numerical min/max */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VMAXNM_F32(float a, float b);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VMINNM_F32(float a, float b);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VMAXNM_F64(double a, double b);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VMINNM_F64(double a, double b);

/* VFPv5: rounding */
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTA_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTM_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTN_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTP_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTX_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTR_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind float __iar_builtin_VRINTZ_F32(float a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTA_F64(double a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTM_F64(double a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTN_F64(double a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTP_F64(double a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTX_F64(double a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTR_F64(double a);
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind double __iar_builtin_VRINTZ_F64(double a);

#pragma language=restore
















#line 177 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"

#line 184 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"













#line 204 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"

#line 215 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"

#line 234 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"























_Pragma("inline=forced") __intrinsic int32_t __REVSH(int32_t val) {
  return __iar_builtin_REVSH((int16_t)val);
}









  







  



#line 345 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"
  




/*
  While there are definitions of these functions in arm_math.h 
  these cannot be enabled.

  __IAR_FT uint8_t __CLZ(uint32_t val) {
    return __iar_builtin_CLZ(val);
  }


  __STATIC_INLINE int32_t __SSAT(int32_t val, uint32_t sat) {
    if ((sat >= 1U) && (sat <= 32U)) {
      const int32_t max = (int32_t)((1U << (sat - 1U)) - 1U);
      const int32_t min = -1 - max ;
      if (val > max) {
        return max;
      } else if (val < min) {
        return min;
      }
    }
    return val;
  }

  __STATIC_INLINE int32_t __USAT(int32_t val, uint32_t sat) {
    if (sat <= 31U) {
      const int32_t max = (int32_t)((1U << sat) - 1U);
      const int32_t min = 0;
      if (val > max) {
        return max;
      } else if (val < min) {
        return min;
      }
    }
    return val;
  }      
  
*/	
  


#line 422 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"

#line 493 "C:\\Program Files (x86)\\IAR Systems\\Embedded Workbench 8.0\\arm\\inc\\c\\cmsis_iar.h"




#pragma diag_default=Pe940
#pragma diag_default=Pe177

#line 260 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmInstr.h"


#line 582 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmInstr.h"

/*@}*/ /* end of group CMSIS_Core_InstructionInterface */

#line 123 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmFunc.h"
/**************************************************************************//**
 * @file     core_cmFunc.h
 * @brief    CMSIS Cortex-M Core Function Access Header File
 * @version  V2.10
 * @date     26. July 2011
 *
 * @note
 * Copyright (C) 2009-2011 ARM Limited. All rights reserved.
 *
 * @par
 * ARM Limited (ARM) is supplying this software for use with Cortex-M 
 * processor based microcontrollers.  This file can be freely distributed 
 * within development tools that are supporting such ARM based processors. 
 *
 * @par
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 ******************************************************************************/





/* ###########################  Core Function Access  ########################### */
/** \ingroup  CMSIS_Core_FunctionInterface   
    \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  @{
 */

#line 296 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmFunc.h"
/* IAR iccarm specific functions */



#line 605 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cmFunc.h"

/*@} end of CMSIS_Core_RegAccFunctions */


#line 124 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"








/* check device defines and use defaults */
#line 149 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"

/* IO definitions (access restrictions to peripheral registers) */
#line 158 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\core_cm0.h"

/*@} end of group CMSIS_core_definitions */



/*******************************************************************************
 *                 Register Abstraction
 ******************************************************************************/
/** \defgroup CMSIS_core_register CMSIS Core Register
  Core Register contain:
  - Core Register
  - Core NVIC Register
  - Core SCB Register
  - Core SysTick Register
*/

/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_CORE CMSIS Core
  Type definitions for the Cortex-M Core Registers
  @{
 */

/** \brief  Union type to access the Application Program Status Register (APSR).
 */
typedef union
{
  struct
  {

    uint32_t _reserved0:27;              /*!< bit:  0..26  Reserved                           */





    uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
    uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
    uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
    uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
    uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} APSR_Type;


/** \brief  Union type to access the Interrupt Program Status Register (IPSR).
 */
typedef union
{
  struct
  {
    uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
    uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved                           */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} IPSR_Type;


/** \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 */
typedef union
{
  struct
  {
    uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */

    uint32_t _reserved0:15;              /*!< bit:  9..23  Reserved                           */





    uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0)          */
    uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0)          */
    uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
    uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
    uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
    uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
    uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} xPSR_Type;


/** \brief  Union type to access the Control Registers (CONTROL).
 */
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
    uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used                   */
    uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag           */
    uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved                           */
  } b;                                   /*!< Structure used for bit  access                  */
  uint32_t w;                            /*!< Type      used for word access                  */
} CONTROL_Type;

/*@} end of group CMSIS_CORE */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_NVIC CMSIS NVIC
  Type definitions for the Cortex-M NVIC Registers
  @{
 */

/** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 */
typedef struct
{
  volatile uint32_t ISER[1];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register           */
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register          */
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register           */
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register         */
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                   /*!< Offset: 0x300 (R/W)  Interrupt Priority Register              */
}  NVIC_Type;

/*@} end of group CMSIS_NVIC */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_SCB CMSIS SCB
  Type definitions for the Cortex-M System Control Block Registers
  @{
 */

/** \brief  Structure type to access the System Control Block (SCB).
 */
typedef struct
{
  volatile const  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register                                   */
  volatile uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Register                  */
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset Control Register      */
  volatile uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register                               */
  volatile uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register                        */
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                  /*!< Offset: 0x01C (R/W)  System Handlers Priority Registers. [0] is RESERVED   */
  volatile uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State Register             */
} SCB_Type;

/* SCB CPUID Register Definitions */















/* SCB Interrupt Control State Register Definitions */



























/* SCB Application Interrupt and Reset Control Register Definitions */















/* SCB System Control Register Definitions */









/* SCB Configuration Control Register Definitions */






/* SCB System Handler Control and State Register Definitions */



/*@} end of group CMSIS_SCB */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_SysTick CMSIS SysTick
  Type definitions for the Cortex-M System Timer Registers
  @{
 */

/** \brief  Structure type to access the System Timer (SysTick).
 */
typedef struct
{
  volatile uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Register */
  volatile uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register       */
  volatile uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register      */
  volatile const  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register        */
} SysTick_Type;

/* SysTick Control / Status Register Definitions */












/* SysTick Reload Register Definitions */



/* SysTick Current Register Definitions */



/* SysTick Calibration Register Definitions */









/*@} end of group CMSIS_SysTick */


/** \ingroup  CMSIS_core_register
    \defgroup CMSIS_CoreDebug CMSIS Core Debug
  Cortex-M0 Core Debug Registers (DCB registers, SHCSR, and DFSR) are only accessible over DAP
  and not via processor. Therefore they are not covered by the Cortex-M0 header file.
  @{
 */
/*@} end of group CMSIS_CoreDebug */


/** \ingroup  CMSIS_core_register
  @{
 */

/* Memory mapping of Cortex-M0 Hardware */











/*@} */



/*******************************************************************************
 *                Hardware Abstraction Layer
 ******************************************************************************/
/** \defgroup CMSIS_Core_FunctionInterface CMSIS Core Function Interface
  Core Function Interface contains:
  - Core NVIC Functions
  - Core SysTick Functions
  - Core Register Access Functions
*/



/* ##########################   NVIC functions  #################################### */
/** \ingroup  CMSIS_Core_FunctionInterface
    \defgroup CMSIS_Core_NVICFunctions CMSIS Core NVIC Functions
  @{
 */

/* Interrupt Priorities are WORD accessible only under ARMv6M                   */
/* The following MACROS handle generation of the register offset and byte masks */





/** \brief  Enable External Interrupt

    This function enables a device specific interrupt in the NVIC interrupt controller.
    The interrupt number cannot be a negative value.

    \param [in]      IRQn  Number of the external interrupt to enable
 */
static inline void NVIC_EnableIRQ (IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}


/** \brief  Disable External Interrupt

    This function disables a device specific interrupt in the NVIC interrupt controller.
    The interrupt number cannot be a negative value.

    \param [in]      IRQn  Number of the external interrupt to disable
 */
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}


/** \brief  Get Pending Interrupt

    This function reads the pending register in the NVIC and returns the pending bit
    for the specified interrupt.

    \param [in]      IRQn  Number of the interrupt for get pending
    \return             0  Interrupt status is not pending
    \return             1  Interrupt status is pending
 */
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}


/** \brief  Set Pending Interrupt

    This function sets the pending bit for the specified interrupt.
    The interrupt number cannot be a negative value.

    \param [in]      IRQn  Number of the interrupt for set pending
 */
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}


/** \brief  Clear Pending Interrupt

    This function clears the pending bit for the specified interrupt.
    The interrupt number cannot be a negative value.

    \param [in]      IRQn  Number of the interrupt for clear pending
 */
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrupt */
}


/** \brief  Set Interrupt Priority

    This function sets the priority for the specified interrupt. The interrupt
    number can be positive to specify an external (device specific)
    interrupt, or negative to specify an internal (core) interrupt.

    Note: The priority cannot be set for every core interrupt.

    \param [in]      IRQn  Number of the interrupt for set priority
    \param [in]  priority  Priority to set
 */
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}


/** \brief  Get Interrupt Priority

    This function reads the priority for the specified interrupt. The interrupt
    number can be positive to specify an external (device specific)
    interrupt, or negative to specify an internal (core) interrupt.

    The returned priority value is automatically aligned to the implemented
    priority bits of the microcontroller.

    \param [in]   IRQn  Number of the interrupt for get priority
    \return             Interrupt Priority
 */
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  } /* get priority for Cortex-M0 system interrupts */
  else {
    return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  } /* get priority for device specific interrupts  */
}


/** \brief  System Reset

    This function initiate a system reset request to reset the MCU.
 */
static inline void NVIC_SystemReset(void)
{
  __iar_builtin_DSB();                                                     /* Ensure all outstanding memory accesses included
                                                                  buffered write are completed before reset */
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __iar_builtin_DSB();                                                     /* Ensure completion of memory access */
  while(1);                                                    /* wait until reset */
}

/*@} end of CMSIS_Core_NVICFunctions */



/* ##################################    SysTick function  ############################################ */
/** \ingroup  CMSIS_Core_FunctionInterface
    \defgroup CMSIS_Core_SysTickFunctions CMSIS Core SysTick Functions
  @{
 */



/** \brief  System Tick Configuration

    This function initialises the system tick timer and its interrupt and start the system tick timer.
    Counter is in free running mode to generate periodical interrupts.

    \param [in]  ticks  Number of ticks between two interrupts
    \return          0  Function succeeded
    \return          1  Function failed
 */
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFUL << 0))  return (1);            /* Reload value impossible */

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (ticks & (0xFFFFFFUL << 0)) - 1;      /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);  /* set Priority for Cortex-M0 System Interrupts */
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                          /* Load the SysTick Counter Value */
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                    /* Enable SysTick IRQ and SysTick Timer */
  return (0);                                                  /* Function successful */
}



/*@} end of CMSIS_Core_SysTickFunctions */








#line 41 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\effects.h"
// file effects.h





typedef struct
{
  u8 r;
  u8 g;
  u8 b;
} color_t;



#line 27 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\effects.h"

#line 39 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\effects.h"




typedef enum
{
  P_STAT_ON,
  P_STAT_OFF,
  P_STAT_EMPTY
} pixel_status;

typedef enum
{
  MOV_UP,
  MOV_DOWN
} side_t;

typedef struct  // светлячок
{
  color_t   *pattern;   // указатель на паттерн цветов
  color_t   back;       // фоновый цвет, который остаётся после погасания
  s16       size;       // размер в пикселях
  s16       position;   // позиция
  side_t    direction;  // направление движения
  u8        d_on;       // часть включения (на шаг)
  u8        d_off;      // часть выключения (на шаг)
  u8        d_time;     // шаг вкл/выкл (мс)
  u16       step_time;  // скорость движения (мс на сдвиг)
	u32				mov_timer;	// таймер движения
} light_t;

typedef struct  // пиксель
{
  color_t       set;          // установленный цвет пикселя
  color_t       color;        // текущий цвет пикселя
  color_t       delta;        // шаг изменения цвета
  pixel_status  status;       // статус (ON / OFF / EMPTY)
  light_t       *light;       // указатель на светлячок
  u32           color_timer;  // таймер изменения яркости
} pixel_t;


typedef enum  // возможные состояния эффектов (можно дополнять) 
{
  EFF_INIT,
  EFF_UP,
  EFF_DOWN,
  EFF_WAIT,
  EFF_STOP
} eff_stat;
  
typedef struct  // структура состояния эффекта
{
  eff_stat  status;
  light_t   *light;
  pixel_t   *layer;
} eff_struct;

void effects_proc (void);
void init_layers (void);

#line 42 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.h"
/**
  ******************************************************************************
  * @file    main.h 
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    23-March-2012
  * @brief   Header for main.c module
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 
  
/* Define to prevent recursive inclusion -------------------------------------*/





/* Includes ------------------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/


/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
//void TimingDelay_Decrement(void);
//void Delay(__IO uint32_t nTime);



/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
#line 43 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\global.h"







// file global.h
// определения глобальных переменных проекта


/* Construct define ----------------------------------------------------------*/

//#define TIM_WS_ARR    19  //1250ns old ws2811
//#define TIM_WS_ZERO   8   // 450ns
//#define TIM_WS_ONE    13  // 800ns
//#define TIM_WS_RESET  0









/* Global data ---------------------------------------------------------------*/


#pragma pack(4)
typedef struct Global
{
  u16      led_buffer[(50 * 24) + 1];
  color_t stripe[50];
}Global;
#pragma pack()


/* Exported constants --------------------------------------------------------*/
extern Global	g;

#line 44 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\inits.h"



// file inits.h






// заголовки объявленных функций инициализации
//



void init_irq (void);
void system_clocks_init (void);


#line 45 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\ws2811.h"
// file ws2811.h





void  init_ws2811_pin   (void);
void  led_buffer_clear  (void);
void  led_buffer_proc   (void);
void  led_buffer_set    (color_t *stripe);
u8    gamma_corr        (u8 input);
void  stripe_test       (void);
void  stripe_clear      (void);
void  led_dma_init      (void);

void  add_color         (color_t *result, color_t *first, color_t *second);
void  sub_color         (color_t *result, color_t *first, color_t *second);

#line 46 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"
#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\messages.h"
// С„Р°Р№Р» messages.h
// РѕРїСЂРµРґРµР»РµРЅРёСЏ РіР»РѕР±Р°Р»СЊРЅС‹С… СЃС‚СЂСѓРєС‚СѓСЂ







typedef enum	
{
	NO_MESSAGE =      0, 
	MESSAGE_SET =     1,
	MESSAGE_ACTIVE =  2
} mess_state;

// С‚РёРїС‹ СЃРѕРѕР±С‰РµРЅРёР№ (СЃРѕРѕС‚РІРµС‚СЃС‚РІСѓСЋС‚ Р·Р°РїРёСЃСЏРј РІ СЃС‚СЂСѓРєС‚СѓСЂРµ messages)





extern mess_state p[3];

void 		    init_messages		  (void);
inline void send_message		  (u8 mes);
inline _Bool get_message			  (u8 mes);
void		    process_messages	(void);

/******************************************************************************
* РџСЂРѕРіСЂР°РјРјР° РїРѕР»СѓС‡РµРЅРёСЏ СЃРѕРѕР±С‰РµРЅРёСЏ
* РІС…РѕРґ - РЅРѕРјРµСЂ СЃРѕРѕР±С‰РµРЅРёСЏ
* РІС‹С…РѕРґ - СЃРѕСЃС‚РѕСЏРЅРёРµ СЃРѕРѕР±С‰РµРЅРёСЏ
******************************************************************************/
inline _Bool get_message (u8 mes)
{
	if (p[mes] == MESSAGE_ACTIVE)
	{
		return 1;
	}
	return 0;
}

/******************************************************************************
* РџСЂРѕРіСЂР°РјРјР° РїРµСЂРµРґР°С‡Рё СЃРѕРѕР±С‰РµРЅРёСЏ
* РІС…РѕРґ - РЅРѕРјРµСЂ СЃРѕРѕР±С‰РµРЅРёСЏ
* РґРѕРїРѕР»РЅРёС‚РµР»СЊРЅС‹Рµ РїР°СЂР°РјРµС‚СЂС‹ РїРµСЂРµРґР°СЋС‚СЃСЏ С‡РµСЂРµР· РіР»РѕР±Р°Р»СЊРЅСѓСЋ СЃС‚СЂСѓРєС‚СѓСЂСѓ РґР°РЅРЅС‹С…
* РІС‹С…РѕРґ - СѓСЃС‚Р°РЅРѕРІРєР° С„Р»Р°РіР° СЃРѕРѕР±С‰РµРЅРёСЏ
******************************************************************************/
inline void send_message (u8 mes)
{
	if (p[mes] != MESSAGE_ACTIVE)
	{
		p[mes] = MESSAGE_SET;
	}
}


#line 47 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\project\\main.c"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/


Global	g;	// объявляется место для структуры g как Global

/* Private function prototypes -----------------------------------------------*/
void systick_delay (u32 time);
/* Private functions ---------------------------------------------------------*/

int main(void)
{
  system_clocks_init ();

  init_ws2811_pin ();
  init_messages ();
  
  init_layers ();
  
  while (1)
  {
    led_buffer_proc ();
    effects_proc ();
    process_messages ();
  }
//  return (0);
}




/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */

  while (1)
  {
    systick_delay (100);
  }
}


/**
  * @brief  Add a delay using the Systick
  * @param  nTime Delay in milliseconds.
  * @retval None
  */
void systick_delay (u32 time)
{
  u32 start_time;
  
  timer_reset (&start_time);
  while (timer_end (&start_time, time))
  {
  }
  
    
}

/********END OF FILE****/
