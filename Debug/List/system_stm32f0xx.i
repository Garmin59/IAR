#line 1 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\system_stm32f0xx.c"
/**
  ******************************************************************************
  * @file    system_stm32f0xx.c
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    23-March-2012
  * @brief   CMSIS Cortex-M0 Device Peripheral Access Layer System Source File.
  *          This file contains the system clock configuration for STM32F0xx devices,
  *          and is customized for use with STM32F0-DISCOVERY Kit. 
  *          The STM32F0xx is configured to run at 48 MHz, following the three  
  *          configuration below:
  *            - PLL_SOURCE_HSI (default): HSI (~8MHz) used to clock the PLL, and
  *                                        the PLL is used as system clock source.  
  *            - PLL_SOURCE_HSE          : HSE (8MHz) used to clock the PLL, and 
  *                                        the PLL is used as system clock source.
  *            - PLL_SOURCE_HSE_BYPASS   : HSE bypassed with an external clock 
  *                                        (8MHz, coming from ST-Link) used to clock
  *                                        the PLL, and the PLL is used as system
  *                                        clock source.  
  *
  *  
  * 1.  This file provides two functions and one global variable to be called from 
  *     user application:
  *      - SystemInit(): Setups the system clock (System clock source, PLL Multiplier
  *                      and Divider factors, AHB/APBx prescalers and Flash settings),
  *                      depending on the configuration selected (see above).
  *                      This function is called at startup just after reset and 
  *                      before branch to main program. This call is made inside
  *                      the "startup_stm32f0xx.s" file.
  *
  *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
  *                                  by the user application to setup the SysTick 
  *                                  timer or configure other parameters.
  *
  *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
  *                                 be called whenever the core clock is changed
  *                                 during program execution.
  *
  * 2. After each device reset the HSI (8 MHz Range) is used as system clock source.
  *    Then SystemInit() function is called, in "startup_stm32f0xx.s" file, to
  *    configure the system clock before to branch to main program.
  *
  * 3. If the system clock source selected by user fails to startup, the SystemInit()
  *    function will do nothing and HSI still used as system clock source. User can 
  *    add some code to deal with this issue inside the SetSysClock() function.
  *
  * 4. The default value of HSE crystal is set to 8MHz, refer to "HSE_VALUE" define
  *    in "stm32f0xx.h" file. When HSE is used as system clock source, directly or
  *    through PLL, and you are using different crystal you have to adapt the HSE
  *    value to your own configuration.
  *
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

/** @addtogroup CMSIS
  * @{
  */

/** @addtogroup stm32f0xx_system
  * @{
  */  
  
/** @addtogroup STM32F0xx_System_Private_Includes
  * @{
  */

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
#line 85 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\system_stm32f0xx.c"

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Private_TypesDefinitions
  * @{
  */

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Private_Defines
  * @{
  */
/* Select the PLL clock source */

//#define PLL_SOURCE_HSI        // HSI (~8MHz) used to clock the PLL, and the PLL is used as system clock source

//#define PLL_SOURCE_HSE_BYPASS // HSE bypassed with an external clock (8MHz, coming from ST-Link) used to clock
                              // the PLL, and the PLL is used as system clock source

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Private_Macros
  * @{
  */

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Private_Variables
  * @{
  */
uint32_t SystemCoreClock    = 48000000;
volatile const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};

/**
  * @}
  */

/** @addtogroup STM32F0xx_System_Private_FunctionPrototypes
  * @{
  */

static void SetSysClock(void);

/** @addtogroup STM32F0xx_System_Private_Functions
  * @{
  */

/**
  * @brief  Setup the microcontroller system.
  *         Initialize the Embedded Flash Interface, the PLL and update the 
  *         SystemCoreClock variable.
  * @param  None
  * @retval None
  */
void SystemInit (void)
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

  /* Configure the System clock frequency, AHB/APBx prescalers and Flash settings */
  SetSysClock();
}

/**
  * @brief  Update SystemCoreClock according to Clock Register Values
  *         The SystemCoreClock variable contains the core clock (HCLK), it can
  *         be used by the user application to setup the SysTick timer or configure
  *         other parameters.
  *
  * @note   Each time the core clock (HCLK) changes, this function must be called
  *         to update SystemCoreClock variable value. Otherwise, any configuration
  *         based on this variable will be incorrect.         
  *
  * @note   - The system frequency computed by this function is not the real 
  *           frequency in the chip. It is calculated based on the predefined 
  *           constant and the selected clock source:
  *
  *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
  *                                              
  *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
  *                          
  *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**)
  *             or HSI_VALUE(*) multiplied/divided by the PLL factors.
  *
  *         (*) HSI_VALUE is a constant defined in stm32f0xx.h file (default value
  *             8 MHz) but the real value may vary depending on the variations
  *             in voltage and temperature.
  *
  *         (**) HSE_VALUE is a constant defined in stm32f0xx.h file (default value
  *              8 MHz), user has to ensure that HSE_VALUE is same as the real
  *              frequency of the crystal used. Otherwise, this function may
  *              have wrong result.
  *
  *         - The result of this function could be not correct when using fractional
  *           value for HSE crystal.
  * @param  None
  * @retval None
  */
void SystemCoreClockUpdate (void)
{
  uint32_t tmp = 0, pllmull = 0, pllsource = 0, prediv1factor = 0;

  /* Get SYSCLK source -------------------------------------------------------*/
  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x0000000C);
  
  switch (tmp)
  {
    case 0x00:  /* HSI used as system clock */
      SystemCoreClock = ((uint32_t)8000000);
      break;
    case 0x04:  /* HSE used as system clock */
      SystemCoreClock = ((uint32_t)6000000);
      break;
    case 0x08:  /* PLL used as system clock */
      /* Get PLL clock source and multiplication factor ----------------------*/
      pllmull = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x003C0000);
      pllsource = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x00010000);
      pllmull = ( pllmull >> 18) + 2;
      
      if (pllsource == 0x00)
      {
        /* HSI oscillator clock divided by 2 selected as PLL clock entry */
        SystemCoreClock = (((uint32_t)8000000) >> 1) * pllmull;
      }
      else
      {
        prediv1factor = (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR2 & ((uint32_t)0x0000000F)) + 1;
        /* HSE oscillator clock selected as PREDIV1 clock entry */
        SystemCoreClock = (((uint32_t)6000000) / prediv1factor) * pllmull; 
      }      
      break;
    default: /* HSI used as system clock */
      SystemCoreClock = ((uint32_t)8000000);
      break;
  }
  /* Compute HCLK clock frequency ----------------*/
  /* Get HCLK prescaler */
  tmp = AHBPrescTable[((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & ((uint32_t)0x000000F0)) >> 4)];
  /* HCLK clock frequency */
  SystemCoreClock >>= tmp;  
}

/**
  * @brief  Configures the System clock frequency, AHB/APBx prescalers and Flash
  *         settings.
  * @note   This function should be called only once the RCC clock configuration
  *         is reset to the default reset state (done in SystemInit() function).
  * @param  None
  * @retval None
  */
static void SetSysClock(void)
{  
  /* SYSCLK, HCLK, PCLK configuration ----------------------------------------*/
#line 303 "D:\\Ilya\\Projects\\332 WS2811 hew year light\\IAR\\system\\system_stm32f0xx.c"
  volatile uint32_t StartUpCounter = 0, HSEStatus = 0;

  /* Enable HSE */    
  ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR |= ((uint32_t)((uint32_t)0x00010000));




   
  /* Wait till HSE is ready and if Time out is reached exit */
  do
  {
    HSEStatus = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR & ((uint32_t)0x00020000);
    StartUpCounter++;  
  } while((!HSEStatus) && (StartUpCounter <= ((uint16_t)0x0500)));

  // после цикла ожидания HSEStatus == 0 при не готовности RCC_CR_HSERDY
  if (HSEStatus)
  {
    /* Enable Prefetch Buffer and set Flash Latency */
    ((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00002000))->ACR = ((uint32_t)0x00000010) | ((uint32_t)0x00000001);
 
    /* HCLK = SYSCLK */
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR |= (uint32_t)((uint32_t)0x00000000);
      
    /* PCLK = HCLK */
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR |= (uint32_t)((uint32_t)0x00000000);

    /* PLL configuration = HSE * 8 = 48 MHz */
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00010000) | ((uint32_t)0x00020000) | ((uint32_t)0x003C0000)));
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR |= (uint32_t)(((uint32_t)0x00010000) | ((uint32_t)0x00000000) | ((uint32_t)0x00180000));
            
    /* Enable PLL */
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR |= ((uint32_t)0x01000000);

    /* Wait till PLL is ready */
    while((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CR & ((uint32_t)0x02000000)) == 0)
    {
    }

    /* Select PLL as system clock source */
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR &= (uint32_t)((uint32_t)~(((uint32_t)0x00000003)));
    ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR |= (uint32_t)((uint32_t)0x00000002);    

    /* Wait till PLL is used as system clock source */
    while ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x00001000))->CFGR & (uint32_t)((uint32_t)0x0000000C)) != (uint32_t)((uint32_t)0x00000008))
    {
    }
  }
  else
  { /* If HSE fails to start-up, the application will have wrong clock 
         configuration. User can add here some code to deal with this error */
	while (1);	// здесь и остановимся
  }  

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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
