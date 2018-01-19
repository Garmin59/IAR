

#include	"stm32f0xx.h"
#include	"system_stm32f0xx.h"
#include	"stm32f0xx_conf.h"
#include	"stm32f0xxAdd.h"
#include	"core_cm0.h"
#include 	"effects.h"
#include	"global.h"
#include	"inits.h"

void system_clocks_init (void)
{
 	RCC_ClocksTypeDef	RCC_Clocks;

	SystemInit ();						// from startup files system_stm32f0xx.c
	SystemCoreClockUpdate ();			// установка тактирования
	RCC_GetClocksFreq (&RCC_Clocks);	// получить текущие значения частот и тактирования

	RCC_ClockSecuritySystemCmd (ENABLE);	// Enable Clock Security System(CSS): this will generate an NMI exception when HSE clock fails

	init_irq ();

	SysTick_Config ((RCC_Clocks.HCLK_Frequency / 1000) - 1);	// конфигурация системного таймера 1000 Гц (1 мс) 
}

void vInit_gpio_pin (void)
{
/* Enable the GPIOA Clock */
	RCC->AHBENR |= RCC_AHBENR_GPIOFEN;
	

/* Output System Clock on MCO pin */
	//RCC->CFGR |= RCC_CFGR_MCO_SYSCLK;

	GPIOF->MODER &= ~GPIO_MODER_MODER4;			// PinF4 - input кнопка USER
	GPIOF->OTYPER &= ~GPIO_OTYPER_OT_4;			// PinF4 - pushpull
	GPIOF->OSPEEDR &= ~GPIO_OSPEEDER_OSPEEDR4;	// PinF4 speed low
	GPIOF->PUPDR |= GPIO_PUPDR_PUPDR4_1;		// PinF4 подтяжка к земле
}



/*******************************************************************************
* Разрешение прерываний и их приоритеты
*
*******************************************************************************/
void init_irq (void)
{
  NVIC_SetPriority (USART1_IRQn, (uint32_t) 2);			// установить приоритет прерывания от 0 до 3
  NVIC_SetPriority (DMA1_Channel4_5_IRQn, (uint32_t) 2);	// установить приоритет прерывания от 0 до 3
	NVIC_SetPriority (TIM15_IRQn, (uint32_t) 3);			// установить приоритет прерывания от 0 до 3
	NVIC_SetPriority (TS_IRQn, (uint32_t) 2);				// установить приоритет прерывания от 0 до 3
	
	NVIC_EnableIRQ (USART1_IRQn);			// разрешить прерывания от USART1
	NVIC_EnableIRQ (DMA1_Channel4_5_IRQn);	// разрешить прерывания от DMA4
	NVIC_EnableIRQ (TIM15_IRQn);			// разрешить прерывания от TIM15
	NVIC_EnableIRQ (TS_IRQn);				// разрешить прерывания от TS
	
   /* These interrupts are enabled in stm32f0xx_it.c file	*/
}

void vInit_dma (void)
{
//	RCC->AHBENR |= RCC_AHBENR_DMA1EN;						// включить тактирование DMA1
//	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;					// включить тактирование SYSCFG
//	SYSCFG->CFGR1 |= SYSCFG_CFGR1_USART1TX_DMA_RMP;			// переключить запрос USART1 TXE на канал 4
//	//RCC->APB2ENR &= ~RCC_APB2ENR_SYSCFGEN;					// выключить тактирование SYSCFG
//	
//	DMA1_Channel4->CPAR = (uint32_t)&(USART1->TDR);	// адрес перифериии
////	DMA1_Channel4->CMAR = (__IO uint32_t)g.USART1_outbuf;	// адрес памяти
//	DMA1_Channel4->CNDTR = DMA_CNDTR_NDT & g.usart1_outlen;	// длина пересылки
//	
//	DMA1_Channel4->CCR = 0;					// очистить управляющий регистр
//	DMA1_Channel4->CCR &= ~DMA_CCR_MEM2MEM;	// не из памяти в память
//	DMA1_Channel4->CCR &= ~DMA_CCR_PL;		// приоритет низкий
//	DMA1_Channel4->CCR |= DMA_CCR_PL_1;		// приоритет высокий
//	DMA1_Channel4->CCR &= ~DMA_CCR_MSIZE;	// размер данных 8 бит
//	DMA1_Channel4->CCR &= ~DMA_CCR_PSIZE;	// размер периферии 8 бит
//	DMA1_Channel4->CCR |= DMA_CCR_MINC;		// память инкрементировать
//	DMA1_Channel4->CCR &= ~DMA_CCR_PINC;	// периферию не инкрементировать
//	DMA1_Channel4->CCR &= ~DMA_CCR_CIRC;	// циркулярный режим выключен
//	DMA1_Channel4->CCR |= DMA_CCR_DIR;		// направление от памяти в периферию
//	DMA1_Channel4->CCR |= DMA_CCR_TCIE;		// разрешить прерывание окончания передачи
}


