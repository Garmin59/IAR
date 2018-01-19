

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
	SystemCoreClockUpdate ();			// ��������� ������������
	RCC_GetClocksFreq (&RCC_Clocks);	// �������� ������� �������� ������ � ������������

	RCC_ClockSecuritySystemCmd (ENABLE);	// Enable Clock Security System(CSS): this will generate an NMI exception when HSE clock fails

	init_irq ();

	SysTick_Config ((RCC_Clocks.HCLK_Frequency / 1000) - 1);	// ������������ ���������� ������� 1000 �� (1 ��) 
}

void vInit_gpio_pin (void)
{
/* Enable the GPIOA Clock */
	RCC->AHBENR |= RCC_AHBENR_GPIOFEN;
	

/* Output System Clock on MCO pin */
	//RCC->CFGR |= RCC_CFGR_MCO_SYSCLK;

	GPIOF->MODER &= ~GPIO_MODER_MODER4;			// PinF4 - input ������ USER
	GPIOF->OTYPER &= ~GPIO_OTYPER_OT_4;			// PinF4 - pushpull
	GPIOF->OSPEEDR &= ~GPIO_OSPEEDER_OSPEEDR4;	// PinF4 speed low
	GPIOF->PUPDR |= GPIO_PUPDR_PUPDR4_1;		// PinF4 �������� � �����
}



/*******************************************************************************
* ���������� ���������� � �� ����������
*
*******************************************************************************/
void init_irq (void)
{
  NVIC_SetPriority (USART1_IRQn, (uint32_t) 2);			// ���������� ��������� ���������� �� 0 �� 3
  NVIC_SetPriority (DMA1_Channel4_5_IRQn, (uint32_t) 2);	// ���������� ��������� ���������� �� 0 �� 3
	NVIC_SetPriority (TIM15_IRQn, (uint32_t) 3);			// ���������� ��������� ���������� �� 0 �� 3
	NVIC_SetPriority (TS_IRQn, (uint32_t) 2);				// ���������� ��������� ���������� �� 0 �� 3
	
	NVIC_EnableIRQ (USART1_IRQn);			// ��������� ���������� �� USART1
	NVIC_EnableIRQ (DMA1_Channel4_5_IRQn);	// ��������� ���������� �� DMA4
	NVIC_EnableIRQ (TIM15_IRQn);			// ��������� ���������� �� TIM15
	NVIC_EnableIRQ (TS_IRQn);				// ��������� ���������� �� TS
	
   /* These interrupts are enabled in stm32f0xx_it.c file	*/
}

void vInit_dma (void)
{
//	RCC->AHBENR |= RCC_AHBENR_DMA1EN;						// �������� ������������ DMA1
//	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;					// �������� ������������ SYSCFG
//	SYSCFG->CFGR1 |= SYSCFG_CFGR1_USART1TX_DMA_RMP;			// ����������� ������ USART1 TXE �� ����� 4
//	//RCC->APB2ENR &= ~RCC_APB2ENR_SYSCFGEN;					// ��������� ������������ SYSCFG
//	
//	DMA1_Channel4->CPAR = (uint32_t)&(USART1->TDR);	// ����� ����������
////	DMA1_Channel4->CMAR = (__IO uint32_t)g.USART1_outbuf;	// ����� ������
//	DMA1_Channel4->CNDTR = DMA_CNDTR_NDT & g.usart1_outlen;	// ����� ���������
//	
//	DMA1_Channel4->CCR = 0;					// �������� ����������� �������
//	DMA1_Channel4->CCR &= ~DMA_CCR_MEM2MEM;	// �� �� ������ � ������
//	DMA1_Channel4->CCR &= ~DMA_CCR_PL;		// ��������� ������
//	DMA1_Channel4->CCR |= DMA_CCR_PL_1;		// ��������� �������
//	DMA1_Channel4->CCR &= ~DMA_CCR_MSIZE;	// ������ ������ 8 ���
//	DMA1_Channel4->CCR &= ~DMA_CCR_PSIZE;	// ������ ��������� 8 ���
//	DMA1_Channel4->CCR |= DMA_CCR_MINC;		// ������ ����������������
//	DMA1_Channel4->CCR &= ~DMA_CCR_PINC;	// ��������� �� ����������������
//	DMA1_Channel4->CCR &= ~DMA_CCR_CIRC;	// ����������� ����� ��������
//	DMA1_Channel4->CCR |= DMA_CCR_DIR;		// ����������� �� ������ � ���������
//	DMA1_Channel4->CCR |= DMA_CCR_TCIE;		// ��������� ���������� ��������� ��������
}


