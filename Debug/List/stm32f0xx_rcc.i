#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c"
/**
  ******************************************************************************
  * @file    stm32f0xx_rcc.c
  * @author  MCD Application Team
  * @version V1.0.0RC1
  * @date    27-January-2012
  * @brief   This file provides firmware functions to manage the following 
  *          functionalities of the Reset and clock control (RCC) peripheral:
  *           + Internal/external clocks, PLL, CSS and MCO configuration
  *           + System, AHB and APB busses clocks configuration
  *           + Peripheral clocks configuration
  *           + Interrupts and flags management
  *
 @verbatim

 ===============================================================================
                        ##### RCC specific features #####
 ===============================================================================
    [..] After reset the device is running from HSI (8 MHz) with Flash 0 WS, 
         all peripherals are off except internal SRAM, Flash and SWD.
         (#) There is no prescaler on High speed (AHB) and Low speed (APB) busses;
             all peripherals mapped on these busses are running at HSI speed.
         (#) The clock for all peripherals is switched off, except the SRAM and FLASH.
         (#) All GPIOs are in input floating state, except the SWD pins which
             are assigned to be used for debug purpose.
    [..] Once the device started from reset, the user application has to:
         (#) Configure the clock source to be used to drive the System clock
             (if the application needs higher frequency/performance)
         (#) Configure the System clock frequency and Flash settings
         (#) Configure the AHB and APB busses prescalers
         (#) Enable the clock for the peripheral(s) to be used
         (#) Configure the clock source(s) for peripherals which clocks are not
             derived from the System clock (ADC, CEC, I2C, USART, RTC and IWDG)

 @endverbatim
  
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

/* Includes ------------------------------------------------------------------*/
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
#line 234 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\stm32f0xx.h"

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
#line 36 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\inc\\stm32f0xx_dbgmcu.h"

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
#line 56 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c"


/** @addtogroup STM32F0xx_StdPeriph_Driver
  * @{
  */

/** @defgroup RCC 
  * @brief RCC driver modules
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/

/* ---------------------- RCC registers mask -------------------------------- */
/* RCC Flag Mask */


/* CR register byte 2 (Bits[23:16]) base address */


/* CFGR register byte 3 (Bits[31:23]) base address */


/* CIR register byte 1 (Bits[15:8]) base address */


/* CIR register byte 2 (Bits[23:16]) base address */


/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
static volatile const uint8_t APBAHBPrescTable[16] = {0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9};

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/** @defgroup RCC_Private_Functions
  * @{
  */

/** @defgroup RCC_Group1 Internal and external clocks, PLL, CSS and MCO configuration functions
 *  @brief   Internal and external clocks, PLL, CSS and MCO configuration functions 
 *
@verbatim
 ===============================================================================
 ##### Internal-external clocks, PLL, CSS and MCO configuration functions #####
 ===============================================================================
    [..] This section provides functions allowing to configure the internal/external clocks,
         PLL, CSS and MCO.
         (#) HSI (high-speed internal), 8 MHz factory-trimmed RC used directly 
             or through the PLL as System clock source.
             The HSI clock can be used also to clock the USART, I2C and CEC peripherals.
         (#) HSI14 (high-speed internal for ADC), 14 MHz factory-trimmed RC used to clock
             the ADC peripheral.
         (#) LSI (low-speed internal), 40 KHz low consumption RC used as IWDG and/or RTC
             clock source.
         (#) HSE (high-speed external), 4 to 32 MHz crystal oscillator used directly or
             through the PLL as System clock source. Can be used also as RTC clock source.
         (#) LSE (low-speed external), 32 KHz oscillator used as RTC clock source. 
             LSE can be used also to clock the USART and CEC peripherals.   
         (#) PLL (clocked by HSI or HSE), for System clock.
         (#) CSS (Clock security system), once enabled and if a HSE clock failure occurs 
             (HSE used directly or through PLL as System clock source), the System clock
             is automatically switched to HSI and an interrupt is generated if enabled. 
             The interrupt is linked to the Cortex-M0 NMI (Non-Maskable Interrupt) 
             exception vector.   
         (#) MCO (microcontroller clock output), used to output SYSCLK, HSI, HSI14, HSE, 
             PLL clock on PA8 pin.

@endverbatim
  * @{
  */

/**
  * @brief  Resets the RCC clock configuration to the default reset state.
  * @note   The default reset state of the clock configuration is given below:
  * @note      HSI ON and used as system clock source 
  * @note      HSI14, HSE and PLL OFF
  * @note      AHB, APB prescaler set to 1.
  * @note      CSS and MCO OFF
  * @note      All interrupts disabled
  * @note   However, this function doesn't modify the configuration of the
  * @note      Peripheral clocks
  * @note      LSI, LSE and RTC clocks
  * @param  None
  * @retval None
  */
void RCC_DeInit(void)
{
  /* Set HSION bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR |= (uint32_t)0x00000001;

  /* Reset SW[1:0], HPRE[3:0], PPRE[2:0], ADCPRE and MCOSEL[2:0] bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR &= (uint32_t)0xF8FFB80C;
  
  /* Reset HSEON, CSSON and PLLON bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR &= (uint32_t)0xFEF6FFFF;

  /* Reset HSEBYP bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR &= (uint32_t)0xFFFBFFFF;

  /* Reset PLLSRC, PLLXTPRE and PLLMUL[3:0] bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR &= (uint32_t)0xFFC0FFFF;

  /* Reset PREDIV1[3:0] bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR2 &= (uint32_t)0xFFFFFFF0;

  /* Reset USARTSW[1:0], I2CSW, CECSW and ADCSW bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 &= (uint32_t)0xFFFFFEAC;
  
  /* Reset HSI14 bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2 &= (uint32_t)0xFFFFFFFE;

  /* Disable all interrupts */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CIR = 0x00000000;
}

/**
  * @brief  Configures the External High Speed oscillator (HSE).
  * @note   After enabling the HSE (RCC_HSE_ON or RCC_HSE_Bypass), the application
  *           software should wait on HSERDY flag to be set indicating that HSE clock
  *           is stable and can be used to clock the PLL and/or system clock.
  *  @note    HSE state can not be changed if it is used directly or through the
  *           PLL as system clock. In this case, you have to select another source
  *           of the system clock then change the HSE state (ex. disable it).
  *  @note    The HSE is stopped by hardware when entering STOP and STANDBY modes.
  * @note   This function resets the CSSON bit, so if the Clock security system(CSS)
  *         was previously enabled you have to enable it again after calling this
  *         function.
  * @param RCC_HSE: specifies the new state of the HSE.
  *   This parameter can be one of the following values:
  *     @arg RCC_HSE_OFF: turn OFF the HSE oscillator, HSERDY flag goes low after
  *                       6 HSE oscillator clock cycles.
  *     @arg RCC_HSE_ON: turn ON the HSE oscillator
  *     @arg RCC_HSE_Bypass: HSE oscillator bypassed with external clock
  * @retval None
  */
void RCC_HSEConfig(uint8_t RCC_HSE)
{
  /* Check the parameters */
  (((((RCC_HSE) == ((uint8_t)0x00)) || ((RCC_HSE) == ((uint8_t)0x01)) || ((RCC_HSE) == ((uint8_t)0x05)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 197));

  /* Reset HSEON and HSEBYP bits before configuring the HSE ------------------*/
  *(volatile uint8_t *) ((uint32_t)0x40021002) = ((uint8_t)0x00);

  /* Set the new HSE configuration -------------------------------------------*/
  *(volatile uint8_t *) ((uint32_t)0x40021002) = RCC_HSE;

}

/**
  * @brief  Waits for HSE start-up.
  * @note   This function waits on HSERDY flag to be set and return SUCCESS if 
  *         this flag is set, otherwise returns ERROR if the timeout is reached 
  *         and this flag is not set. The timeout value is defined by the constant
  *         HSE_STARTUP_TIMEOUT in stm32f0xx.h file. You can tailor it depending
  *         on the HSE crystal used in your application.
  *         - The HSE is stopped by hardware when entering STOP and STANDBY modes.
  * @param  None
  * @retval An ErrorStatus enumeration value:
  *          - SUCCESS: HSE oscillator is stable and ready to use
  *          - ERROR: HSE oscillator not yet ready
  */
ErrorStatus RCC_WaitForHSEStartUp(void)
{
  volatile uint32_t StartUpCounter = 0;
  ErrorStatus status = ERROR;
  FlagStatus HSEStatus = RESET;
  
  /* Wait till HSE is ready and if timeout is reached exit */
  do
  {
    HSEStatus = RCC_GetFlagStatus(((uint8_t)0x11));
    StartUpCounter++;  
  } while((StartUpCounter != ((uint16_t)0x0500)) && (HSEStatus == RESET));
  
  if (RCC_GetFlagStatus(((uint8_t)0x11)) != RESET)
  {
    status = SUCCESS;
  }
  else
  {
    status = ERROR;
  }  
  return (status);
}

/**
  * @brief  Adjusts the Internal High Speed oscillator (HSI) calibration value.
  * @note   The calibration is used to compensate for the variations in voltage
  *         and temperature that influence the frequency of the internal HSI RC.
  *         Refer to the Application Note AN3300 for more details on how to  
  *         calibrate the HSI.
  * @param  HSICalibrationValue: specifies the HSI calibration trimming value.
  *         This parameter must be a number between 0 and 0x1F.
  * @retval None
  */
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  ((((HSICalibrationValue) <= 0x1F)) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 259));
  
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR;
  
  /* Clear HSITRIM[4:0] bits */
  tmpreg &= ~((uint32_t)0x000000F8);
  
  /* Set the HSITRIM[4:0] bits according to HSICalibrationValue value */
  tmpreg |= (uint32_t)HSICalibrationValue << 3;

  /* Store the new value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR = tmpreg;
}

/**
  * @brief  Enables or disables the Internal High Speed oscillator (HSI).
  * @note     After enabling the HSI, the application software should wait on 
  *           HSIRDY flag to be set indicating that HSI clock is stable and can
  *           be used to clock the PLL and/or system clock.
  * @note     HSI can not be stopped if it is used directly or through the PLL
  *           as system clock. In this case, you have to select another source 
  *           of the system clock then stop the HSI.
  * @note     The HSI is stopped by hardware when entering STOP and STANDBY modes.
  * @param  NewState: new state of the HSI.
  *         This parameter can be: ENABLE or DISABLE.
  * @note   When the HSI is stopped, HSIRDY flag goes low after 6 HSI oscillator
  *         clock cycles.
  * @retval None
  */
void RCC_HSICmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 291));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR |= ((uint32_t)0x00000001);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR &= ~((uint32_t)0x00000001);
  }
}

/**
  * @brief  Adjusts the Internal High Speed oscillator for ADC (HSI14) 
  *         calibration value.
  * @note   The calibration is used to compensate for the variations in voltage
  *         and temperature that influence the frequency of the internal HSI RC.
  *         Refer to the Application Note AN3300 for more details on how to  
  *         calibrate the HSI14.
  * @param  HSI14CalibrationValue: specifies the HSI14 calibration trimming value.
  *         This parameter must be a number between 0 and 0x1F.
  * @retval None
  */
void RCC_AdjustHSI14CalibrationValue(uint8_t HSI14CalibrationValue)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  ((((HSI14CalibrationValue) <= 0x1F)) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 319));
  
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2;
  
  /* Clear HSI14TRIM[4:0] bits */
  tmpreg &= ~((uint32_t)0x000000F8);
  
  /* Set the HSITRIM14[4:0] bits according to HSI14CalibrationValue value */
  tmpreg |= (uint32_t)HSI14CalibrationValue << 3;

  /* Store the new value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2 = tmpreg;
}

/**
  * @brief  Enables or disables the Internal High Speed oscillator for ADC (HSI14).
  * @note     After enabling the HSI14, the application software should wait on 
  *           HSIRDY flag to be set indicating that HSI clock is stable and can
  *           be used to clock the ADC.
  * @note     The HSI14 is stopped by hardware when entering STOP and STANDBY modes.
  * @param  NewState: new state of the HSI14.
  *         This parameter can be: ENABLE or DISABLE.
  * @note   When the HSI14 is stopped, HSI14RDY flag goes low after 6 HSI14 oscillator
  *         clock cycles.
  * @retval None
  */
void RCC_HSI14Cmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 348));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2 |= ((uint32_t)0x00000001);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2 &= ~((uint32_t)0x00000001);
  }
}

/**
  * @brief  Enables or disables the Internal High Speed oscillator request from ADC.
  * @param  NewState: new state of the HSI14 ADC request.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_HSI14ADCRequestCmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 369));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2 &= ~((uint32_t)0x00000004);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2 |= ((uint32_t)0x00000004);
  }
}

/**
  * @brief  Configures the External Low Speed oscillator (LSE).
  * @note     As the LSE is in the Backup domain and write access is denied to this
  *           domain after reset, you have to enable write access using 
  *           PWR_BackupAccessCmd(ENABLE) function before to configure the LSE
  *           (to be done once after reset).
  * @note     After enabling the LSE (RCC_LSE_ON or RCC_LSE_Bypass), the application
  *           software should wait on LSERDY flag to be set indicating that LSE clock
  *           is stable and can be used to clock the RTC.
  * @param  RCC_LSE: specifies the new state of the LSE.
  *   This parameter can be one of the following values:
  *     @arg RCC_LSE_OFF: turn OFF the LSE oscillator, LSERDY flag goes low after
  *                       6 LSE oscillator clock cycles.
  *     @arg RCC_LSE_ON: turn ON the LSE oscillator
  *     @arg RCC_LSE_Bypass: LSE oscillator bypassed with external clock
  * @retval None
  */
void RCC_LSEConfig(uint32_t RCC_LSE)
{
  /* Check the parameters */
  (((((RCC_LSE) == ((uint32_t)0x00000000)) || ((RCC_LSE) == ((uint32_t)0x00000001)) || ((RCC_LSE) == ((uint32_t)(((uint32_t)0x00000001) | ((uint32_t)0x00000004)))))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 401));

  /* Reset LSEON and LSEBYP bits before configuring the LSE ------------------*/
  /* Reset LSEON bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR &= ~(((uint32_t)0x00000001));

  /* Reset LSEBYP bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR &= ~(((uint32_t)0x00000004));

  /* Configure LSE */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR |= RCC_LSE;
}

/**
  * @brief  Configures the External Low Speed oscillator (LSE) drive capability.
  * @param  RCC_LSEDrive: specifies the new state of the LSE drive capability.
  *   This parameter can be one of the following values:
  *     @arg RCC_LSEDrive_Low: LSE oscillator low drive capability.
  *     @arg RCC_LSEDrive_MediumLow: LSE oscillator medium low drive capability.
  *     @arg RCC_LSEDrive_MediumHigh: LSE oscillator medium high drive capability.
  *     @arg RCC_LSEDrive_High: LSE oscillator high drive capability.
  * @retval None
  */
void RCC_LSEDriveConfig(uint32_t RCC_LSEDrive)
{
  /* Check the parameters */
  (((((RCC_LSEDrive) == ((uint32_t)0x00000000)) || ((RCC_LSEDrive) == ((uint32_t)0x00000008)) || ((RCC_LSEDrive) == ((uint32_t)0x00000010)) || ((RCC_LSEDrive) == ((uint32_t)0x00000018)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 427));
  
  /* Clear LSEDRV[1:0] bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR &= ~(((uint32_t)0x00000018));

  /* Set the LSE Drive */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR |= RCC_LSEDrive;
}

/**
  * @brief  Enables or disables the Internal Low Speed oscillator (LSI).
  * @note     After enabling the LSI, the application software should wait on 
  *           LSIRDY flag to be set indicating that LSI clock is stable and can
  *           be used to clock the IWDG and/or the RTC.
  * @note     LSI can not be disabled if the IWDG is running.
  * @param  NewState: new state of the LSI.
  *         This parameter can be: ENABLE or DISABLE.
  * @note   When the LSI is stopped, LSIRDY flag goes low after 6 LSI oscillator
  *         clock cycles.
  * @retval None
  */
void RCC_LSICmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 451));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CSR |= ((uint32_t)0x00000001);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CSR &= ~((uint32_t)0x00000001);
  }
}

/**
  * @brief  Configures the PLL clock source and multiplication factor.
  * @note   This function must be used only when the PLL is disabled.
  *
  * @param  RCC_PLLSource: specifies the PLL entry clock source.
  *   This parameter can be one of the following values:
  *     @arg RCC_PLLSource_HSI_Div2: HSI oscillator clock selected as PLL clock source
  *     @arg RCC_PLLSource_PREDIV1: PREDIV1 clock selected as PLL clock entry
  * @note   The minimum input clock frequency for PLL is 2 MHz (when using HSE as
  *         PLL source).
  *
  * @param  RCC_PLLMul: specifies the PLL multiplication factor, which drive the PLLVCO clock
  *         This parameter can be RCC_PLLMul_x where x:[2,16] 
  *
  * @retval None
  */
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul)
{
  /* Check the parameters */
  (((((RCC_PLLSource) == ((uint32_t)0x00000000)) || ((RCC_PLLSource) == ((uint32_t)0x00010000)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 482));
  (((((RCC_PLLMul) == ((uint32_t)0x00000000)) || ((RCC_PLLMul) == ((uint32_t)0x00040000)) || ((RCC_PLLMul) == ((uint32_t)0x00080000)) || ((RCC_PLLMul) == ((uint32_t)0x000C0000)) || ((RCC_PLLMul) == ((uint32_t)0x00100000)) || ((RCC_PLLMul) == ((uint32_t)0x00140000)) || ((RCC_PLLMul) == ((uint32_t)0x00180000)) || ((RCC_PLLMul) == ((uint32_t)0x001C0000)) || ((RCC_PLLMul) == ((uint32_t)0x00200000)) || ((RCC_PLLMul) == ((uint32_t)0x00240000)) || ((RCC_PLLMul) == ((uint32_t)0x00280000)) || ((RCC_PLLMul) == ((uint32_t)0x002C0000)) || ((RCC_PLLMul) == ((uint32_t)0x00300000)) || ((RCC_PLLMul) == ((uint32_t)0x00340000)) || ((RCC_PLLMul) == ((uint32_t)0x00380000)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 483));

  /* Clear PLL Source [16] and Multiplier [21:18] bits */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR &= ~(((uint32_t)0x003C0000) | ((uint32_t)0x00010000));

  /* Set the PLL Source and Multiplier */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR |= (uint32_t)(RCC_PLLSource | RCC_PLLMul);
}

/**
  * @brief  Enables or disables the PLL.
  * @note   - After enabling the PLL, the application software should wait on 
  *           PLLRDY flag to be set indicating that PLL clock is stable and can
  *           be used as system clock source.
  *         - The PLL can not be disabled if it is used as system clock source
  *         - The PLL is disabled by hardware when entering STOP and STANDBY modes.
  * @param  NewState: new state of the PLL.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_PLLCmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 506));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR |= ((uint32_t)0x01000000);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR &= ~((uint32_t)0x01000000);
  }
}

/**
  * @brief  Configures the PREDIV1 division factor.
  * @note   This function must be used only when the PLL is disabled.
  * @param  RCC_PREDIV1_Div: specifies the PREDIV1 clock division factor.
  *         This parameter can be RCC_PREDIV1_Divx where x:[1,16]
  * @retval None
  */
void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Div)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  (((((RCC_PREDIV1_Div) == ((uint32_t)0x00000000)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000001)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000002)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000003)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000004)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000005)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000006)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000007)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000008)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x00000009)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x0000000A)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x0000000B)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x0000000C)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x0000000D)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x0000000E)) || ((RCC_PREDIV1_Div) == ((uint32_t)0x0000000F)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 530));

  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR2;
  /* Clear PREDIV1[3:0] bits */
  tmpreg &= ~(((uint32_t)0x0000000F));
  /* Set the PREDIV1 division factor */
  tmpreg |= RCC_PREDIV1_Div;
  /* Store the new value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR2 = tmpreg;
}

/**
  * @brief  Enables or disables the Clock Security System.
  * @note   If a failure is detected on the HSE oscillator clock, this oscillator
  *         is automatically disabled and an interrupt is generated to inform the
  *         software about the failure (Clock Security System Interrupt, CSSI),
  *         allowing the MCU to perform rescue operations. The CSSI is linked to 
  *         the Cortex-M0 NMI (Non-Maskable Interrupt) exception vector.
  * @param  NewState: new state of the Clock Security System.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_ClockSecuritySystemCmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 555));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR |= ((uint32_t)0x00080000);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR &= ~((uint32_t)0x00080000);
  }
}

/**
  * @brief  Selects the clock source to output on MCO pin (PA8).
  * @note   PA8 should be configured in alternate function mode.
  * @param  RCC_MCOSource: specifies the clock source to output.
  *   This parameter can be one of the following values:
  *     @arg RCC_MCOSource_NoClock: No clock selected.
  *     @arg RCC_MCOSource_HSI14: HSI14 oscillator clock selected.
  *     @arg RCC_MCOSource_SYSCLK: System clock selected.
  *     @arg RCC_MCOSource_HSI: HSI oscillator clock selected.
  *     @arg RCC_MCOSource_HSE: HSE oscillator clock selected.
  *     @arg RCC_MCOSource_PLLCLK_Div2: PLL clock selected.
  * @retval None
  */
void RCC_MCOConfig(uint8_t RCC_MCOSource)
{
  /* Check the parameters */
  (((((RCC_MCOSource) == ((uint8_t)0x00)) || ((RCC_MCOSource) == ((uint8_t)0x03)) || ((RCC_MCOSource) == ((uint8_t)0x04)) || ((RCC_MCOSource) == ((uint8_t)0x05)) || ((RCC_MCOSource) == ((uint8_t)0x06)) || ((RCC_MCOSource) == ((uint8_t)0x07)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 583));
    
  /* Select MCO clock source and prescaler */
  *(volatile uint8_t *) ((uint32_t)0x40021007) =  RCC_MCOSource;
}

/**
  * @}
  */

/** @defgroup RCC_Group2 System AHB and APB busses clocks configuration functions
 *  @brief   System, AHB and APB busses clocks configuration functions
 *
@verbatim
 ===============================================================================
     ##### System, AHB and APB busses clocks configuration functions #####
 ===============================================================================

    [..] This section provide functions allowing to configure the System, AHB and 
         APB busses clocks.
         (#) Several clock sources can be used to drive the System clock (SYSCLK): HSI,
             HSE and PLL.
             The AHB clock (HCLK) is derived from System clock through configurable prescaler
             and used to clock the CPU, memory and peripherals mapped on AHB bus (DMA and GPIO).
             and APB (PCLK) clocks are derived from AHB clock through 
             configurable prescalers and used to clock the peripherals mapped on these busses.
             You can use "RCC_GetClocksFreq()" function to retrieve the frequencies of these clocks.

         -@- All the peripheral clocks are derived from the System clock (SYSCLK) except:
             (+@) The ADC clock which is derived from HSI14 or APB (APB divided by a
                  programmable prescaler: 2 or 4).
             (+@) The CEC clock which is derived from LSE or HSI divided by 244.
             (+@) The I2C clock which is derived from HSI or system clock (SYSCLK).
             (+@) The USART clock which is derived from HSI, system clock (SYSCLK), APB or LSE.
             (+@) The RTC/LCD clock which is derived from the LSE, LSI or 2 MHz HSE_RTC (HSE
                  divided by a programmable prescaler).
                  The System clock (SYSCLK) frequency must be higher or equal to the RTC/LCD
                  clock frequency.
             (+@) IWDG clock which is always the LSI clock.
       
         (#) The maximum frequency of the SYSCLK, HCLK and PCLK is 48 MHz.
             Depending on the maximum frequency, the FLASH wait states (WS) should be 
             adapted accordingly:
        +--------------------------------------------- +
        |  Wait states  |   HCLK clock frequency (MHz) |
        |---------------|------------------------------|
        |0WS(1CPU cycle)|       0 < HCLK <= 24         |
        |---------------|------------------------------|
        |1WS(2CPU cycle)|       24 < HCLK <= 48        |
        +----------------------------------------------+

         (#) After reset, the System clock source is the HSI (8 MHz) with 0 WS and 
             prefetch is disabled.
  
    [..] It is recommended to use the following software sequences to tune the number
         of wait states needed to access the Flash memory with the CPU frequency (HCLK).
         (+) Increasing the CPU frequency
         (++) Program the Flash Prefetch buffer, using "FLASH_PrefetchBufferCmd(ENABLE)" 
              function
         (++) Check that Flash Prefetch buffer activation is taken into account by 
              reading FLASH_ACR using the FLASH_GetPrefetchBufferStatus() function
         (++) Program Flash WS to 1, using "FLASH_SetLatency(FLASH_Latency_1)" function
         (++) Check that the new number of WS is taken into account by reading FLASH_ACR
         (++) Modify the CPU clock source, using "RCC_SYSCLKConfig()" function
         (++) If needed, modify the CPU clock prescaler by using "RCC_HCLKConfig()" function
         (++) Check that the new CPU clock source is taken into account by reading 
              the clock source status, using "RCC_GetSYSCLKSource()" function 
         (+) Decreasing the CPU frequency
         (++) Modify the CPU clock source, using "RCC_SYSCLKConfig()" function
         (++) If needed, modify the CPU clock prescaler by using "RCC_HCLKConfig()" function
         (++) Check that the new CPU clock source is taken into account by reading 
              the clock source status, using "RCC_GetSYSCLKSource()" function
         (++) Program the new number of WS, using "FLASH_SetLatency()" function
         (++) Check that the new number of WS is taken into account by reading FLASH_ACR
         (++) Disable the Flash Prefetch buffer using "FLASH_PrefetchBufferCmd(DISABLE)" 
              function
         (++) Check that Flash Prefetch buffer deactivation is taken into account by reading FLASH_ACR
              using the FLASH_GetPrefetchBufferStatus() function.

@endverbatim
  * @{
  */

/**
  * @brief  Configures the system clock (SYSCLK).
  * @note    The HSI is used (enabled by hardware) as system clock source after
  *           startup from Reset, wake-up from STOP and STANDBY mode, or in case
  *           of failure of the HSE used directly or indirectly as system clock
  *           (if the Clock Security System CSS is enabled).
  * @note     A switch from one clock source to another occurs only if the target
  *           clock source is ready (clock stable after startup delay or PLL locked). 
  *           If a clock source which is not yet ready is selected, the switch will
  *           occur when the clock source will be ready. 
  *           You can use RCC_GetSYSCLKSource() function to know which clock is
  *           currently used as system clock source.  
  * @param  RCC_SYSCLKSource: specifies the clock source used as system clock source 
  *   This parameter can be one of the following values:
  *     @arg RCC_SYSCLKSource_HSI:    HSI selected as system clock source
  *     @arg RCC_SYSCLKSource_HSE:    HSE selected as system clock source
  *     @arg RCC_SYSCLKSource_PLLCLK: PLL selected as system clock source
  * @retval None
  */
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  (((((RCC_SYSCLKSource) == ((uint32_t)0x00000000)) || ((RCC_SYSCLKSource) == ((uint32_t)0x00000001)) || ((RCC_SYSCLKSource) == ((uint32_t)0x00000002)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 690));
  
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR;
  
  /* Clear SW[1:0] bits */
  tmpreg &= ~((uint32_t)0x00000003);
  
  /* Set SW[1:0] bits according to RCC_SYSCLKSource value */
  tmpreg |= RCC_SYSCLKSource;
  
  /* Store the new value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR = tmpreg;
}

/**
  * @brief  Returns the clock source used as system clock.
  * @param  None
  * @retval The clock source used as system clock. The returned value can be one 
  *         of the following values:
  *              - 0x00: HSI used as system clock
  *              - 0x04: HSE used as system clock  
  *              - 0x08: PLL used as system clock
  */
uint8_t RCC_GetSYSCLKSource(void)
{
  return ((uint8_t)(((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x0000000C)));
}

/**
  * @brief  Configures the AHB clock (HCLK).
  * @param  RCC_SYSCLK: defines the AHB clock divider. This clock is derived from 
  *                     the system clock (SYSCLK).
  *   This parameter can be one of the following values:
  *     @arg RCC_SYSCLK_Div1:   AHB clock = SYSCLK
  *     @arg RCC_SYSCLK_Div2:   AHB clock = SYSCLK/2
  *     @arg RCC_SYSCLK_Div4:   AHB clock = SYSCLK/4
  *     @arg RCC_SYSCLK_Div8:   AHB clock = SYSCLK/8
  *     @arg RCC_SYSCLK_Div16:  AHB clock = SYSCLK/16
  *     @arg RCC_SYSCLK_Div64:  AHB clock = SYSCLK/64
  *     @arg RCC_SYSCLK_Div128: AHB clock = SYSCLK/128
  *     @arg RCC_SYSCLK_Div256: AHB clock = SYSCLK/256
  *     @arg RCC_SYSCLK_Div512: AHB clock = SYSCLK/512
  * @retval None
  */
void RCC_HCLKConfig(uint32_t RCC_SYSCLK)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  (((((RCC_SYSCLK) == ((uint32_t)0x00000000)) || ((RCC_SYSCLK) == ((uint32_t)0x00000080)) || ((RCC_SYSCLK) == ((uint32_t)0x00000090)) || ((RCC_SYSCLK) == ((uint32_t)0x000000A0)) || ((RCC_SYSCLK) == ((uint32_t)0x000000B0)) || ((RCC_SYSCLK) == ((uint32_t)0x000000C0)) || ((RCC_SYSCLK) == ((uint32_t)0x000000D0)) || ((RCC_SYSCLK) == ((uint32_t)0x000000E0)) || ((RCC_SYSCLK) == ((uint32_t)0x000000F0)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 739));
  
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR;
  
  /* Clear HPRE[3:0] bits */
  tmpreg &= ~((uint32_t)0x000000F0);
  
  /* Set HPRE[3:0] bits according to RCC_SYSCLK value */
  tmpreg |= RCC_SYSCLK;
  
  /* Store the new value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR = tmpreg;
}

/**
  * @brief  Configures the APB clock (PCLK).
  * @param  RCC_HCLK: defines the APB clock divider. This clock is derived from 
  *         the AHB clock (HCLK).
  *   This parameter can be one of the following values:
  *     @arg RCC_HCLK_Div1: APB clock = HCLK
  *     @arg RCC_HCLK_Div2: APB clock = HCLK/2
  *     @arg RCC_HCLK_Div4: APB clock = HCLK/4
  *     @arg RCC_HCLK_Div8: APB clock = HCLK/8
  *     @arg RCC_HCLK_Div16: APB clock = HCLK/16
  * @retval None
  */
void RCC_PCLKConfig(uint32_t RCC_HCLK)
{
  uint32_t tmpreg = 0;
  
  /* Check the parameters */
  (((((RCC_HCLK) == ((uint32_t)0x00000000)) || ((RCC_HCLK) == ((uint32_t)0x00000400)) || ((RCC_HCLK) == ((uint32_t)0x00000500)) || ((RCC_HCLK) == ((uint32_t)0x00000600)) || ((RCC_HCLK) == ((uint32_t)0x00000700)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 770));
  
  tmpreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR;
  
  /* Clear PPRE[2:0] bits */
  tmpreg &= ~((uint32_t)0x00000700);
  
  /* Set PPRE[2:0] bits according to RCC_HCLK value */
  tmpreg |= RCC_HCLK;
  
  /* Store the new value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR = tmpreg;
}

/**
  * @brief  Configures the ADC clock (ADCCLK).
  * @param  RCC_ADCCLK: defines the ADC clock source. This clock is derived 
  *         from the HSI14 or APB clock (PCLK).
  *         This parameter can be one of the following values:
  *             @arg RCC_ADCCLK_HSI14: ADC clock = HSI14 (14MHz)
  *             @arg RCC_ADCCLK_PCLK_Div2: ADC clock = PCLK/2
  *             @arg RCC_ADCCLK_PCLK_Div4: ADC clock = PCLK/4  
  * @retval None
  */
void RCC_ADCCLKConfig(uint32_t RCC_ADCCLK)
{ 
  /* Check the parameters */
  (((((RCC_ADCCLK) == ((uint32_t)0x00000000)) || ((RCC_ADCCLK) == ((uint32_t)0x01000000)) || ((RCC_ADCCLK) == ((uint32_t)0x01004000)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 797));

  /* Clear ADCPRE bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR &= ~((uint32_t)0x00004000);
  /* Set ADCPRE bits according to RCC_PCLK value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR |= RCC_ADCCLK & 0xFFFF;

  /* Clear ADCSW bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 &= ~((uint32_t)0x00000100); 
  /* Set ADCSW bits according to RCC_ADCCLK value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 |= RCC_ADCCLK >> 16;  
}

/**
  * @brief  Configures the CEC clock (CECCLK).
  * @param  RCC_CECCLK: defines the CEC clock source. This clock is derived 
  *         from the HSI or LSE clock.
  *         This parameter can be one of the following values:
  *             @arg RCC_CECCLK_HSI_Div244: CEC clock = HSI/244 (32768Hz)
  *             @arg RCC_CECCLK_LSE: CEC clock = LSE
  * @retval None
  */
void RCC_CECCLKConfig(uint32_t RCC_CECCLK)
{ 
  /* Check the parameters */
  (((((RCC_CECCLK) == ((uint32_t)0x00000000)) || ((RCC_CECCLK) == ((uint32_t)0x00000040)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 822));

  /* Clear CECSW bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 &= ~((uint32_t)0x00000040);
  /* Set CECSW bits according to RCC_CECCLK value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 |= RCC_CECCLK;
}

/**
  * @brief  Configures the I2C1 clock (I2C1CLK).
  * @param  RCC_I2CCLK: defines the I2C1 clock source. This clock is derived 
  *         from the HSI or System clock.
  *         This parameter can be one of the following values:
  *             @arg RCC_I2C1CLK_HSI: I2C1 clock = HSI
  *             @arg RCC_I2C1CLK_SYSCLK: I2C1 clock = System Clock
  * @retval None
  */
void RCC_I2CCLKConfig(uint32_t RCC_I2CCLK)
{ 
  /* Check the parameters */
  (((((RCC_I2CCLK) == ((uint32_t)0x00000000)) || ((RCC_I2CCLK) == ((uint32_t)0x00000010)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 842));

  /* Clear I2CSW bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 &= ~((uint32_t)0x00000010);
  /* Set I2CSW bits according to RCC_I2CCLK value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 |= RCC_I2CCLK;
}

/**
  * @brief  Configures the USART1 clock (USART1CLK).
  * @param  RCC_USARTCLK: defines the USART1 clock source. This clock is derived 
  *         from the HSI or System clock.
  *         This parameter can be one of the following values:
  *             @arg RCC_USART1CLK_PCLK: USART1 clock = APB Clock (PCLK)
  *             @arg RCC_USART1CLK_SYSCLK: USART1 clock = System Clock
  *             @arg RCC_USART1CLK_LSE: USART1 clock = LSE Clock
  *             @arg RCC_USART1CLK_HSI: USART1 clock = HSI Clock
  * @retval None
  */
void RCC_USARTCLKConfig(uint32_t RCC_USARTCLK)
{ 
  /* Check the parameters */
  (((((RCC_USARTCLK) == ((uint32_t)0x00000000)) || ((RCC_USARTCLK) == ((uint32_t)0x00000001)) || ((RCC_USARTCLK) == ((uint32_t)0x00000002)) || ((RCC_USARTCLK) == ((uint32_t)0x00000003)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 864));

  /* Clear USARTSW[1:0] bit */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 &= ~((uint32_t)0x00000003);
  /* Set USARTSW bits according to RCC_USARTCLK value */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 |= RCC_USARTCLK;
}

/**
  * @brief  Returns the frequencies of the System, AHB and APB busses clocks.
  * @note    The frequency returned by this function is not the real frequency
  *           in the chip. It is calculated based on the predefined constant and
  *           the source selected by RCC_SYSCLKConfig():
  *                                              
  * @note     If SYSCLK source is HSI, function returns constant HSI_VALUE(*)
  *                                              
  * @note     If SYSCLK source is HSE, function returns constant HSE_VALUE(**)
  *                          
  * @note     If SYSCLK source is PLL, function returns constant HSE_VALUE(**) 
  *             or HSI_VALUE(*) multiplied by the PLL factors.
  *         
  *         (*) HSI_VALUE is a constant defined in stm32f0xx.h file (default value
  *             8 MHz) but the real value may vary depending on the variations
  *             in voltage and temperature, refer to RCC_AdjustHSICalibrationValue().   
  *    
  *         (**) HSE_VALUE is a constant defined in stm32f0xx.h file (default value
  *              8 MHz), user has to ensure that HSE_VALUE is same as the real
  *              frequency of the crystal used. Otherwise, this function may
  *              return wrong result.
  *                
  *         - The result of this function could be not correct when using fractional
  *           value for HSE crystal.   
  *             
  * @param  RCC_Clocks: pointer to a RCC_ClocksTypeDef structure which will hold 
  *         the clocks frequencies. 
  *     
  * @note     This function can be used by the user application to compute the 
  *           baudrate for the communication peripherals or configure other parameters.
  * @note     Each time SYSCLK, HCLK and/or PCLK clock changes, this function
  *           must be called to update the structure's field. Otherwise, any
  *           configuration based on this function will be incorrect.
  *    
  * @retval None
  */
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks)
{
  uint32_t tmp = 0, pllmull = 0, pllsource = 0, prediv1factor = 0, presc = 0;

  /* Get SYSCLK source -------------------------------------------------------*/
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x0000000C);
  
  switch (tmp)
  {
    case 0x00:  /* HSI used as system clock */
      RCC_Clocks->SYSCLK_Frequency = ((uint32_t)8000000);
      break;
    case 0x04:  /* HSE used as system clock */
      RCC_Clocks->SYSCLK_Frequency = ((uint32_t)6000000);
      break;
    case 0x08:  /* PLL used as system clock */
      /* Get PLL clock source and multiplication factor ----------------------*/
      pllmull = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x003C0000);
      pllsource = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x00010000);
      pllmull = ( pllmull >> 18) + 2;
      
      if (pllsource == 0x00)
      {
        /* HSI oscillator clock divided by 2 selected as PLL clock entry */
        RCC_Clocks->SYSCLK_Frequency = (((uint32_t)8000000) >> 1) * pllmull;
      }
      else
      {
        prediv1factor = (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR2 & ((uint32_t)0x0000000F)) + 1;
        /* HSE oscillator clock selected as PREDIV1 clock entry */
        RCC_Clocks->SYSCLK_Frequency = (((uint32_t)6000000) / prediv1factor) * pllmull; 
      }      
      break;
    default: /* HSI used as system clock */
      RCC_Clocks->SYSCLK_Frequency = ((uint32_t)8000000);
      break;
  }
  /* Compute HCLK, PCLK clocks frequencies -----------------------------------*/
  /* Get HCLK prescaler */
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x000000F0);
  tmp = tmp >> 4;
  presc = APBAHBPrescTable[tmp]; 
  /* HCLK clock frequency */
  RCC_Clocks->HCLK_Frequency = RCC_Clocks->SYSCLK_Frequency >> presc;

  /* Get PCLK prescaler */
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x00000700);
  tmp = tmp >> 8;
  presc = APBAHBPrescTable[tmp];
  /* PCLK clock frequency */
  RCC_Clocks->PCLK_Frequency = RCC_Clocks->HCLK_Frequency >> presc;

  /* ADCCLK clock frequency */
  if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000100)) != ((uint32_t)0x00000100))
  {
    /* ADC Clock is HSI14 Osc. */
    RCC_Clocks->ADCCLK_Frequency = ((uint32_t)14000000);
  }
  else
  {
    if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x00004000)) != ((uint32_t)0x00004000))
    {
      /* ADC Clock is derived from PCLK/2 */
      RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK_Frequency >> 1;
    }
    else
    {
      /* ADC Clock is derived from PCLK/4 */
      RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK_Frequency >> 2;
    }
    
  }

  /* CECCLK clock frequency */
  if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000040)) != ((uint32_t)0x00000040))
  {
    /* CEC Clock is HSI/256 */
    RCC_Clocks->CECCLK_Frequency = ((uint32_t)8000000) / 244;
  }
  else
  {
    /* CECC Clock is LSE Osc. */
    RCC_Clocks->CECCLK_Frequency = ((uint32_t)32768);
  }

  /* I2C1CLK clock frequency */
  if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000010)) != ((uint32_t)0x00000010))
  {
    /* I2C1 Clock is HSI Osc. */
    RCC_Clocks->I2C1CLK_Frequency = ((uint32_t)8000000);
  }
  else
  {
    /* I2C1 Clock is System Clock */
    RCC_Clocks->I2C1CLK_Frequency = RCC_Clocks->SYSCLK_Frequency;
  }

  /* USART1CLK clock frequency */
  if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000003)) == 0x0)
  {
    /* USART1 Clock is PCLK */
    RCC_Clocks->USART1CLK_Frequency = RCC_Clocks->PCLK_Frequency;
  }
  else if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000003)) == ((uint32_t)0x00000001))
  {
    /* USART1 Clock is System Clock */
    RCC_Clocks->USART1CLK_Frequency = RCC_Clocks->SYSCLK_Frequency;
  }
  else if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000003)) == ((uint32_t)0x00000002))
  {
    /* USART1 Clock is LSE Osc. */
    RCC_Clocks->USART1CLK_Frequency = ((uint32_t)32768);
  }
  else if((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR3 & ((uint32_t)0x00000003)) == ((uint32_t)0x00000003))
  {
    /* USART1 Clock is HSI Osc. */
    RCC_Clocks->USART1CLK_Frequency = ((uint32_t)8000000);
  }

}


/**
  * @}
  */

/** @defgroup RCC_Group3 Peripheral clocks configuration functions
 *  @brief   Peripheral clocks configuration functions 
 *
@verbatim
 ===============================================================================
             #####Peripheral clocks configuration functions #####
 ===============================================================================  

    [..] This section provide functions allowing to configure the Peripheral clocks. 
         (#) The RTC clock which is derived from the LSE, LSI or  HSE_Div32 (HSE
             divided by 32).
         (#) After restart from Reset or wakeup from STANDBY, all peripherals are off
             except internal SRAM, Flash and SWD. Before to start using a peripheral you
             have to enable its interface clock. You can do this using RCC_AHBPeriphClockCmd(),
             RCC_APB2PeriphClockCmd() and RCC_APB1PeriphClockCmd() functions.
         (#) To reset the peripherals configuration (to the default state after device reset)
             you can use RCC_AHBPeriphResetCmd(), RCC_APB2PeriphResetCmd() and 
             RCC_APB1PeriphResetCmd() functions.

@endverbatim
  * @{
  */

/**
  * @brief  Configures the RTC clock (RTCCLK).
  * @note     As the RTC clock configuration bits are in the Backup domain and write
  *           access is denied to this domain after reset, you have to enable write
  *           access using PWR_BackupAccessCmd(ENABLE) function before to configure
  *           the RTC clock source (to be done once after reset).    
  * @note     Once the RTC clock is configured it can't be changed unless the RTC
  *           is reset using RCC_BackupResetCmd function, or by a Power On Reset (POR)
  *             
  * @param  RCC_RTCCLKSource: specifies the RTC clock source.
  *   This parameter can be one of the following values:
  *     @arg RCC_RTCCLKSource_LSE: LSE selected as RTC clock
  *     @arg RCC_RTCCLKSource_LSI: LSI selected as RTC clock
  *     @arg RCC_RTCCLKSource_HSE_Div32: HSE divided by 32 selected as RTC clock
  *       
  * @note     If the LSE or LSI is used as RTC clock source, the RTC continues to
  *           work in STOP and STANDBY modes, and can be used as wakeup source.
  *           However, when the HSE clock is used as RTC clock source, the RTC
  *           cannot be used in STOP and STANDBY modes.
  *             
  * @note     The maximum input clock frequency for RTC is 2MHz (when using HSE as
  *           RTC clock source).
  *                          
  * @retval None
  */
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource)
{
  /* Check the parameters */
  (((((RCC_RTCCLKSource) == ((uint32_t)0x00000100)) || ((RCC_RTCCLKSource) == ((uint32_t)0x00000200)) || ((RCC_RTCCLKSource) == ((uint32_t)0x00000300)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1085));
  
  /* Select the RTC clock source */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR |= RCC_RTCCLKSource;
}

/**
  * @brief  Enables or disables the RTC clock.
  * @note   This function must be used only after the RTC clock source was selected
  *         using the RCC_RTCCLKConfig function.
  * @param  NewState: new state of the RTC clock.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_RTCCLKCmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1102));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR |= ((uint32_t)0x00008000);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR &= ~((uint32_t)0x00008000);
  }
}

/**
  * @brief  Forces or releases the Backup domain reset.
  * @note   This function resets the RTC peripheral (including the backup registers)
  *         and the RTC clock source selection in RCC_BDCR register.
  * @param  NewState: new state of the Backup domain reset.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_BackupResetCmd(FunctionalState NewState)
{
  /* Check the parameters */
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1125));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR |= ((uint32_t)0x00010000);
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR &= ~((uint32_t)0x00010000);
  }
}

/**
  * @brief  Enables or disables the AHB peripheral clock.
  * @note   After reset, the peripheral clock (used for registers read/write access)
  *         is disabled and the application software has to enable this clock before 
  *         using it.    
  * @param  RCC_AHBPeriph: specifies the AHB peripheral to gates its clock.
  *         This parameter can be any combination of the following values:
  *             @arg RCC_AHBPeriph_GPIOA:         GPIOA clock
  *             @arg RCC_AHBPeriph_GPIOB:         GPIOB clock
  *             @arg RCC_AHBPeriph_GPIOC:         GPIOC clock
  *             @arg RCC_AHBPeriph_GPIOD:         GPIOD clock
  *             @arg RCC_AHBPeriph_GPIOF:         GPIOF clock
  *             @arg RCC_AHBPeriph_TS:            TS clock
  *             @arg RCC_AHBPeriph_CRC:           CRC clock
  *             @arg RCC_AHBPeriph_FLITF: (has effect only when the Flash memory is in power down mode)  
  *             @arg RCC_AHBPeriph_SRAM:          SRAM clock
  *             @arg RCC_AHBPeriph_DMA1:          DMA1 clock
  * @param  NewState: new state of the specified peripheral clock.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_AHBPeriph) & 0xFEA1FFAA) == 0x00) && ((RCC_AHBPeriph) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1161));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1162));
  
  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->AHBENR |= RCC_AHBPeriph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->AHBENR &= ~RCC_AHBPeriph;
  }
}

/**
  * @brief  Enables or disables the High Speed APB (APB2) peripheral clock.
  * @note   After reset, the peripheral clock (used for registers read/write access)
  *         is disabled and the application software has to enable this clock before 
  *         using it.
  * @param  RCC_APB2Periph: specifies the APB2 peripheral to gates its clock.
  *         This parameter can be any combination of the following values:
  *             @arg RCC_APB2Periph_SYSCFG:      SYSCFG clock
  *             @arg RCC_APB2Periph_ADC1:        ADC1 clock
  *             @arg RCC_APB2Periph_TIM1:        TIM1 clock
  *             @arg RCC_APB2Periph_SPI1:        SPI1 clock
  *             @arg RCC_APB2Periph_USART1:      USART1 clock
  *             @arg RCC_APB2Periph_TIM15:       TIM15 clock
  *             @arg RCC_APB2Periph_TIM16:       TIM16 clock
  *             @arg RCC_APB2Periph_TIM17:       TIM17 clock
  *             @arg RCC_APB2Periph_DBGMCU:      DBGMCU clock
  * @param  NewState: new state of the specified peripheral clock.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_APB2Periph) & 0xFFB8A5FE) == 0x00) && ((RCC_APB2Periph) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1197));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1198));

  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB2ENR |= RCC_APB2Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB2ENR &= ~RCC_APB2Periph;
  }
}

/**
  * @brief  Enables or disables the Low Speed APB (APB1) peripheral clock.
  * @note   After reset, the peripheral clock (used for registers read/write access)
  *         is disabled and the application software has to enable this clock before 
  *         using it.
  * @param  RCC_APB1Periph: specifies the APB1 peripheral to gates its clock.
  *         This parameter can be any combination of the following values:
  *           @arg RCC_APB1Periph_TIM2:      TIM2 clock
  *           @arg RCC_APB1Periph_TIM3:      TIM3 clock
  *           @arg RCC_APB1Periph_TIM6:      TIM6 clock
  *           @arg RCC_APB1Periph_TIM14:     TIM14 clock
  *           @arg RCC_APB1Periph_WWDG:      WWDG clock
  *           @arg RCC_APB1Periph_SPI2:      SPI2 clock
  *           @arg RCC_APB1Periph_USART2:    USART2 clock
  *           @arg RCC_APB1Periph_I2C1:      I2C1 clock
  *           @arg RCC_APB1Periph_I2C2:      I2C2 clock
  *           @arg RCC_APB1Periph_PWR:       PWR clock
  *           @arg RCC_APB1Periph_DAC:       DAC clock
  *           @arg RCC_APB1Periph_CEC:       CEC clock                               
  * @param  NewState: new state of the specified peripheral clock.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_APB1Periph) & 0x8F9DB6EC) == 0x00) && ((RCC_APB1Periph) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1236));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1237));

  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB1ENR |= RCC_APB1Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB1ENR &= ~RCC_APB1Periph;
  }
}

/**
  * @brief  Forces or releases AHB peripheral reset.
  * @param  RCC_AHBPeriph: specifies the AHB peripheral to reset.
  *         This parameter can be any combination of the following values:
  *             @arg RCC_AHBPeriph_GPIOA:         GPIOA clock
  *             @arg RCC_AHBPeriph_GPIOB:         GPIOB clock
  *             @arg RCC_AHBPeriph_GPIOC:         GPIOC clock
  *             @arg RCC_AHBPeriph_GPIOD:         GPIOD clock
  *             @arg RCC_AHBPeriph_GPIOF:         GPIOF clock
  *             @arg RCC_AHBPeriph_TS:            TS clock
  * @param  NewState: new state of the specified peripheral reset.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_AHBPeriphResetCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_AHBPeriph) & 0xFEA1FFFF) == 0x00) && ((RCC_AHBPeriph) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1266));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1267));

  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->AHBRSTR |= RCC_AHBPeriph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->AHBRSTR &= ~RCC_AHBPeriph;
  }
}

/**
  * @brief  Forces or releases High Speed APB (APB2) peripheral reset.
  * @param  RCC_APB2Periph: specifies the APB2 peripheral to reset.
  *         This parameter can be any combination of the following values:
  *             @arg RCC_APB2Periph_SYSCFG:      SYSCFG clock
  *             @arg RCC_APB2Periph_ADC1:        ADC1 clock
  *             @arg RCC_APB2Periph_TIM1:        TIM1 clock
  *             @arg RCC_APB2Periph_SPI1:        SPI1 clock
  *             @arg RCC_APB2Periph_USART1:      USART1 clock
  *             @arg RCC_APB2Periph_TIM15:       TIM15 clock
  *             @arg RCC_APB2Periph_TIM16:       TIM16 clock
  *             @arg RCC_APB2Periph_TIM17:       TIM17 clock
  *             @arg RCC_APB2Periph_DBGMCU:      DBGMCU clock
  * @param  NewState: new state of the specified peripheral reset.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_APB2Periph) & 0xFFB8A5FE) == 0x00) && ((RCC_APB2Periph) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1299));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1300));

  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB2RSTR |= RCC_APB2Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB2RSTR &= ~RCC_APB2Periph;
  }
}

/**
  * @brief  Forces or releases Low Speed APB (APB1) peripheral reset.
  * @param  RCC_APB1Periph: specifies the APB1 peripheral to reset.
  *         This parameter can be any combination of the following values:
  *           @arg RCC_APB1Periph_TIM2:      TIM2 clock
  *           @arg RCC_APB1Periph_TIM3:      TIM3 clock
  *           @arg RCC_APB1Periph_TIM6:      TIM6 clock
  *           @arg RCC_APB1Periph_TIM14:     TIM14 clock
  *           @arg RCC_APB1Periph_WWDG:      WWDG clock
  *           @arg RCC_APB1Periph_SPI2:      SPI2 clock
  *           @arg RCC_APB1Periph_USART2:    USART2 clock
  *           @arg RCC_APB1Periph_I2C1:      I2C1 clock
  *           @arg RCC_APB1Periph_I2C2:      I2C2 clock
  *           @arg RCC_APB1Periph_PWR:       PWR clock
  *           @arg RCC_APB1Periph_DAC:       DAC clock
  *           @arg RCC_APB1Periph_CEC:       CEC clock
  * @param  NewState: new state of the specified peripheral clock.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_APB1Periph) & 0x8F9DB6EC) == 0x00) && ((RCC_APB1Periph) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1335));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1336));

  if (NewState != DISABLE)
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB1RSTR |= RCC_APB1Periph;
  }
  else
  {
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->APB1RSTR &= ~RCC_APB1Periph;
  }
}

/**
  * @}
  */

/** @defgroup RCC_Group4 Interrupts and flags management functions
 *  @brief   Interrupts and flags management functions 
 *
@verbatim
 ===============================================================================
             ##### Interrupts and flags management functions #####
 ===============================================================================
@endverbatim
  * @{
  */

/**
  * @brief  Enables or disables the specified RCC interrupts.
  * @note   The CSS interrupt doesn't have an enable bit; once the CSS is enabled
  *         and if the HSE clock fails, the CSS interrupt occurs and an NMI is
  *         automatically generated. The NMI will be executed indefinitely, and 
  *         since NMI has higher priority than any other IRQ (and main program)
  *         the application will be stacked in the NMI ISR unless the CSS interrupt
  *         pending bit is cleared.
  * @param  RCC_IT: specifies the RCC interrupt sources to be enabled or disabled.
  *         This parameter can be any combination of the following values:
  *              @arg RCC_IT_LSIRDY: LSI ready interrupt
  *              @arg RCC_IT_LSERDY: LSE ready interrupt
  *              @arg RCC_IT_HSIRDY: HSI ready interrupt
  *              @arg RCC_IT_HSERDY: HSE ready interrupt
  *              @arg RCC_IT_PLLRDY: PLL ready interrupt
  *              @arg RCC_IT_HSI14RDY: HSI14 ready interrupt
  * @param  NewState: new state of the specified RCC interrupts.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  */
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState)
{
  /* Check the parameters */
  ((((((RCC_IT) & (uint8_t)0xC0) == 0x00) && ((RCC_IT) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1386));
  (((((NewState) == DISABLE) || ((NewState) == ENABLE))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1387));
  
  if (NewState != DISABLE)
  {
    /* Perform Byte access to RCC_CIR[13:8] bits to enable the selected interrupts */
    *(volatile uint8_t *) ((uint32_t)0x40021009) |= RCC_IT;
  }
  else
  {
    /* Perform Byte access to RCC_CIR[13:8] bits to disable the selected interrupts */
    *(volatile uint8_t *) ((uint32_t)0x40021009) &= (uint8_t)~RCC_IT;
  }
}

/**
  * @brief  Checks whether the specified RCC flag is set or not.
  * @param  RCC_FLAG: specifies the flag to check.
  *         This parameter can be one of the following values:
  *             @arg RCC_FLAG_HSIRDY: HSI oscillator clock ready  
  *             @arg RCC_FLAG_HSERDY: HSE oscillator clock ready
  *             @arg RCC_FLAG_PLLRDY: PLL clock ready
  *             @arg RCC_FLAG_LSERDY: LSE oscillator clock ready
  *             @arg RCC_FLAG_LSIRDY: LSI oscillator clock ready
  *             @arg RCC_FLAG_OBLRST: Option Byte Loader (OBL) reset 
  *             @arg RCC_FLAG_PINRST: Pin reset
  *             @arg RCC_FLAG_PORRST: POR/PDR reset
  *             @arg RCC_FLAG_SFTRST: Software reset
  *             @arg RCC_FLAG_IWDGRST: Independent Watchdog reset
  *             @arg RCC_FLAG_WWDGRST: Window Watchdog reset
  *             @arg RCC_FLAG_LPWRRST: Low Power reset
  *             @arg RCC_FLAG_HSI14RDY: HSI14 oscillator clock ready  
  * @retval The new state of RCC_FLAG (SET or RESET).
  */
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG)
{
  uint32_t tmp = 0;
  uint32_t statusreg = 0;
  FlagStatus bitstatus = RESET;

  /* Check the parameters */
  (((((RCC_FLAG) == ((uint8_t)0x01)) || ((RCC_FLAG) == ((uint8_t)0x11)) || ((RCC_FLAG) == ((uint8_t)0x19)) || ((RCC_FLAG) == ((uint8_t)0x21)) || ((RCC_FLAG) == ((uint8_t)0x41)) || ((RCC_FLAG) == ((uint8_t)0x59)) || ((RCC_FLAG) == ((uint8_t)0x5A)) || ((RCC_FLAG) == ((uint8_t)0x5B)) || ((RCC_FLAG) == ((uint8_t)0x5C)) || ((RCC_FLAG) == ((uint8_t)0x5D))|| ((RCC_FLAG) == ((uint8_t)0x5E))|| ((RCC_FLAG) == ((uint8_t)0x5F))|| ((RCC_FLAG) == ((uint8_t)0x61)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1427));

  /* Get the RCC register index */
  tmp = RCC_FLAG >> 5;

  if (tmp == 0)               /* The flag to check is in CR register */
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR;
  }
  else if (tmp == 1)          /* The flag to check is in BDCR register */
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->BDCR;
  }
  else if (tmp == 2)          /* The flag to check is in CSR register */
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CSR;
  }
  else                        /* The flag to check is in CR2 register */
  {
    statusreg = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR2;
  }    

  /* Get the flag position */
  tmp = RCC_FLAG & ((uint8_t)0x1F);

  if ((statusreg & ((uint32_t)1 << tmp)) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  /* Return the flag status */
  return bitstatus;
}

/**
  * @brief  Clears the RCC reset flags.
  *         The reset flags are: RCC_FLAG_OBLRST, RCC_FLAG_PINRST, RCC_FLAG_PORRST, 
  *         RCC_FLAG_SFTRST, RCC_FLAG_IWDGRST, RCC_FLAG_WWDGRST, RCC_FLAG_LPWRRST.
  * @param  None
  * @retval None
  */
void RCC_ClearFlag(void)
{
  /* Set RMVF bit to clear the reset flags */
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CSR |= ((uint32_t)0x01000000);
}

/**
  * @brief  Checks whether the specified RCC interrupt has occurred or not.
  * @param  RCC_IT: specifies the RCC interrupt source to check.
  *         This parameter can be one of the following values:
  *             @arg RCC_IT_LSIRDY: LSI ready interrupt
  *             @arg RCC_IT_LSERDY: LSE ready interrupt
  *             @arg RCC_IT_HSIRDY: HSI ready interrupt
  *             @arg RCC_IT_HSERDY: HSE ready interrupt
  *             @arg RCC_IT_PLLRDY: PLL ready interrupt
  *             @arg RCC_IT_HSI14RDY: HSI14 ready interrupt 
  *             @arg RCC_IT_CSS: Clock Security System interrupt
  * @retval The new state of RCC_IT (SET or RESET).
  */
ITStatus RCC_GetITStatus(uint8_t RCC_IT)
{
  ITStatus bitstatus = RESET;
  
  /* Check the parameters */
  (((((RCC_IT) == ((uint8_t)0x01)) || ((RCC_IT) == ((uint8_t)0x02)) || ((RCC_IT) == ((uint8_t)0x04)) || ((RCC_IT) == ((uint8_t)0x08)) || ((RCC_IT) == ((uint8_t)0x10)) || ((RCC_IT) == ((uint8_t)0x20)) || ((RCC_IT) == ((uint8_t)0x80)))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1495));
  
  /* Check the status of the specified RCC interrupt */
  if ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CIR & RCC_IT) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  /* Return the RCC_IT status */
  return  bitstatus;
}

/**
  * @brief  Clears the RCC's interrupt pending bits.
  * @param  RCC_IT: specifies the interrupt pending bit to clear.
  *         This parameter can be any combination of the following values:
  *             @arg RCC_IT_LSIRDY: LSI ready interrupt
  *             @arg RCC_IT_LSERDY: LSE ready interrupt
  *             @arg RCC_IT_HSIRDY: HSI ready interrupt
  *             @arg RCC_IT_HSERDY: HSE ready interrupt
  *             @arg RCC_IT_PLLRDY: PLL ready interrupt
  *             @arg RCC_IT_HSI14RDY: HSI14 ready interrupt  
  *             @arg RCC_IT_CSS: Clock Security System interrupt
  * @retval None
  */
void RCC_ClearITPendingBit(uint8_t RCC_IT)
{
  /* Check the parameters */
  ((((((RCC_IT) & (uint8_t)0x40) == 0x00) && ((RCC_IT) != 0x00))) ? (void)0 : assert_failed((uint8_t *)"D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\CMSIS\\stm32f0xx_rcc.c", 1526));
  
  /* Perform Byte access to RCC_CIR[23:16] bits to clear the selected interrupt
     pending bits */
  *(volatile uint8_t *) ((uint32_t)0x4002100A) = RCC_IT;
}

/**
  * @}
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
