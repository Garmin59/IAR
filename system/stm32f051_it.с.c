/******************** (C) COPYRIGHT 2012 STMicroelectronics ********************
* File Name          : stm32f051_it.с
* Author             : Ilya Petrukhin
*******************************************************************************/
#include	<stdint.h>
#include	"stm32f051_it.h"

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
