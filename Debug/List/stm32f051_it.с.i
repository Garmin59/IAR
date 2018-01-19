#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f051_it.с.c"
/******************** (C) COPYRIGHT 2012 STMicroelectronics ********************
* File Name          : stm32f051_it.с
* Author             : Ilya Petrukhin
*******************************************************************************/
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
#line 6 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f051_it.с.c"
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

#line 7 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f051_it.с.c"

volatile uint32_t system_timer = 0;	// системный счётчик времени в мс.

/* Define to prevent recursive inclusion -------------------------------------*/
// Enable the IAR extensions for this source file.
#pragma language=extended
#pragma segment="CSTACK"

// Forward declaration of the default fault handlers.
void  reset_isr           (void); // The reset handler
void  nm_isr              (void); // NMI Handler
void  fault_isr           (void); // Hard Fault Handler
void  int_default_handler (void); // Reserved
void  svc_handler         (void); // SVCall Handler
void  pend_sv_handler     (void); // PendSV Handler
void  systick_handler     (void); // SysTick Handler

// External Interrupts
__weak void WWDG_IRQHandler                 (void);
__weak void PVD_IRQHandler                  (void);
__weak void RTC_IRQHandler                  (void);
__weak void FLASH_IRQHandler                (void);
__weak void RCC_IRQHandler                  (void);
__weak void EXTI0_1_IRQHandler              (void);
__weak void EXTI2_3_IRQHandler              (void);
__weak void EXTI4_15_IRQHandler             (void);
__weak void TS_IRQHandler                   (void);
__weak void DMA1_Channel1_IRQHandler        (void);
__weak void DMA1_Channel2_3_IRQHandler      (void);
__weak void DMA1_Channel4_5_IRQHandler      (void);
__weak void ADC1_COMP_IRQHandler            (void);
__weak void TIM1_BRK_UP_TRG_COM_IRQHandler  (void);
__weak void TIM1_CC_IRQHandler              (void);
__weak void TIM2_IRQHandler                 (void);
__weak void TIM3_IRQHandler                 (void);
__weak void TIM6_DAC_IRQHandler             (void);
__weak void TIM14_IRQHandler                (void);
__weak void TIM15_IRQHandler                (void);
__weak void TIM16_IRQHandler                (void);
__weak void TIM17_IRQHandler                (void);
__weak void I2C1_IRQHandler                 (void);
__weak void I2C2_IRQHandler                 (void);
__weak void SPI1_IRQHandler                 (void);
__weak void SPI2_IRQHandler                 (void);
__weak void USART1_IRQHandler               (void);
__weak void USART2_IRQHandler               (void);
__weak void CEC_IRQHandler                  (void);


// The entry point for the application startup code.
extern void __iar_program_start(void);
//extern void EXTI_Line0_IntHandler(void);
//extern void EXTI_Line6_IntHandler(void);
// A union that describes the entries of the vector table.  The union is needed
// since the first entry is the stack pointer and the remainder are function
// pointers.
typedef union
{
    void (*pfnHandler)(void);
    void * ulPtr;
}
uVectorEntry;

// The vector table.  Note that the proper constructs must be placed on this to
// ensure that it ends up at physical address 0x0000.0000.
__root const uVectorEntry __vector_table[] @ ".intvec" =
{
    { .ulPtr = __sfe( "CSTACK" ) }, // The initial stack pointer                                    
    reset_isr,                      // The reset handler
    nm_isr ,                         // NMI Handler
    fault_isr,                       // Hard Fault Handler
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    svc_handler,                     // SVCall Handler
    int_default_handler,             // Reserved
    int_default_handler,             // Reserved
    pend_sv_handler,                 // PendSV Handler
    systick_handler,                 // SysTick Handler

    // External Interrupts
    WWDG_IRQHandler,                 // Window Watchdog
    PVD_IRQHandler,                  // PVD through EXTI Line detect
    RTC_IRQHandler,                  // RTC through EXTI Line
    FLASH_IRQHandler,                // FLASH
    RCC_IRQHandler,                  // RCC
    EXTI0_1_IRQHandler,              // EXTI Line 0 and 1
    EXTI2_3_IRQHandler,              // EXTI Line 2 and 3
    EXTI4_15_IRQHandler,             // EXTI Line 4 to 15
    TS_IRQHandler,                   // TS
    DMA1_Channel1_IRQHandler,        // DMA1 Channel 1
    DMA1_Channel2_3_IRQHandler,      // DMA1 Channel 2 and Channel 3
    DMA1_Channel4_5_IRQHandler,      // DMA1 Channel 4 and Channel 5
    ADC1_COMP_IRQHandler,            // ADC1, COMP1 and COMP2 
    TIM1_BRK_UP_TRG_COM_IRQHandler,  // TIM1 Break, Update, Trigger and Commutation
    TIM1_CC_IRQHandler,              // TIM1 Capture Compare
    TIM2_IRQHandler,                 // TIM2
    TIM3_IRQHandler,                 // TIM3
    TIM6_DAC_IRQHandler,             // TIM6 and DAC
    int_default_handler,             // Reserved
    TIM14_IRQHandler,                // TIM14
    TIM15_IRQHandler,                // TIM15
    TIM16_IRQHandler,                // TIM16
    TIM17_IRQHandler,                // TIM17
    I2C1_IRQHandler,                 // I2C1
    I2C2_IRQHandler,                 // I2C2
    SPI1_IRQHandler,                 // SPI1
    SPI2_IRQHandler,                 // SPI2
    USART1_IRQHandler,               // USART1
    USART2_IRQHandler,       // USART2
    int_default_handler,     // Reserved
    CEC_IRQHandler,          // CEC
    int_default_handler,     // Reserved
};

// This is the code that gets called when the processor first starts execution
// following a reset event.  Only the absolutely necessary set is performed,
// after which the application supplied entry() routine is called.  Any fancy
// actions (such as making decisions based on the reset cause register, and
// resetting the bits in that register) are left solely in the hands of the
// application.

#pragma call_graph_root="interrupt"         // interrupt category
void  reset_isr           (void) // The reset handler
{
    //
    // Call the application's entry point.
    //
    __iar_program_start();
}

// This is the code that gets called when the processor receives a NMI.  This
// simply enters an infinite loop, preserving the system state for examination
// by a debugger.
#pragma call_graph_root="interrupt"         // interrupt category
void  nm_isr              (void) // NMI Handler
{
    //
    // Enter an infinite loop.
    //
    while(1)
    {
    }
}

/*******************************************************************************
// This is the code that gets called when the processor receives a fault
// interrupt.  This simply enters an infinite loop, preserving the system state
// for examination by a debugger.
*******************************************************************************/
#pragma call_graph_root="interrupt"         // interrupt category
void  fault_isr           (void) // Hard Fault Handler
{
    //
    // Enter an infinite loop.
    //
    while(1)
    {
    }
}


/*******************************************************************************
// This is the code that gets called when the processor receives an unexpected
// interrupt.  This simply enters an infinite loop, preserving the system state
// for examination by a debugger.
*******************************************************************************/
#pragma call_graph_root="interrupt"         // interrupt category
void  int_default_handler (void) // Reserved
{
    //
    // Go into an infinite loop.
    //
    while(1)
    {
    }
}


/*******************************************************************************
* @brief  This function handles SVCall exception.
* @param  None
* @retval None
*******************************************************************************/
#pragma call_graph_root="interrupt"         // interrupt category
void  svc_handler         (void) // SVCall Handler
{
}

/*******************************************************************************
* @brief  This function handles PendSVC exception.
* @param  None
* @retval None
*******************************************************************************/
#pragma call_graph_root="interrupt"         // interrupt category
void  pend_sv_handler     (void) // PendSV Handler
{
}

/*******************************************************************************
* прерывание системного счётчика времени
*
*******************************************************************************/
#pragma call_graph_root="interrupt"         // interrupt category
void  systick_handler     (void) // SysTick Handler
{
  //сюда попадаем каждую 1 миллисекунду
	system_timer++;  
}




/*******************************************************************************
*******************************************************************************/
#pragma weak WWDG_IRQHandler                = int_default_handler
#pragma weak PVD_IRQHandler                 = int_default_handler
#pragma weak RTC_IRQHandler                 = int_default_handler
#pragma weak FLASH_IRQHandler               = int_default_handler
#pragma weak RCC_IRQHandler                 = int_default_handler
#pragma weak EXTI0_1_IRQHandler             = int_default_handler
#pragma weak EXTI2_3_IRQHandler             = int_default_handler
#pragma weak EXTI4_15_IRQHandler            = int_default_handler
#pragma weak TS_IRQHandler                  = int_default_handler
#pragma weak DMA1_Channel1_IRQHandler       = int_default_handler
#pragma weak DMA1_Channel2_3_IRQHandler     = int_default_handler
#pragma weak DMA1_Channel4_5_IRQHandler     = int_default_handler
#pragma weak ADC1_COMP_IRQHandler           = int_default_handler
#pragma weak TIM1_BRK_UP_TRG_COM_IRQHandler = int_default_handler
#pragma weak TIM1_CC_IRQHandler             = int_default_handler
#pragma weak TIM2_IRQHandler                = int_default_handler
#pragma weak TIM3_IRQHandler                = int_default_handler
#pragma weak TIM6_DAC_IRQHandler            = int_default_handler
#pragma weak TIM14_IRQHandler               = int_default_handler
#pragma weak TIM15_IRQHandler               = int_default_handler
#pragma weak TIM16_IRQHandler               = int_default_handler
#pragma weak TIM17_IRQHandler               = int_default_handler
#pragma weak I2C1_IRQHandler                = int_default_handler
#pragma weak I2C2_IRQHandler                = int_default_handler
#pragma weak SPI1_IRQHandler                = int_default_handler
#pragma weak SPI2_IRQHandler                = int_default_handler
#pragma weak USART1_IRQHandler              = int_default_handler
#pragma weak USART2_IRQHandler              = int_default_handler
#pragma weak CEC_IRQHandler                 = int_default_handler


/****END OF FILE****/
