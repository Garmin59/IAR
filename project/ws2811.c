/*
* file ws2811.c
*/

#include  <string.h>
#include	"stm32f0xx.h"				// определения регистров и битовых переменных
#include	"stm32f0xx_conf.h"	// конфигурация используемых функций CMSIS
#include	"stm32f051_it.h"    // системное время и таймеры
#include	"core_cm0.h"				// определения инлайнов
#include 	"effects.h"
#include	"ws2811.h"	
#include	"global.h"					// глобальные переменные
#include 	"messages.h"


void init_ws2811_pin (void)
{
  // init pin
	RCC->AHBENR |= RCC_AHBENR_GPIOBEN;  // разрешаем тактирование GPIOB

	GPIOF->MODER &= ~GPIO_MODER_MODER4;			// PinF4 - input кнопка USER
	GPIOF->OTYPER &= ~GPIO_OTYPER_OT_4;			// PinF4 - pushpull
	GPIOF->OSPEEDR &= ~GPIO_OSPEEDER_OSPEEDR4;	// PinF4 speed low
	GPIOF->PUPDR |= GPIO_PUPDR_PUPDR4_1;		// PinF4 подтяжка к земле

  GPIOB->MODER &= ~GPIO_MODER_MODER9;
  GPIOB->MODER |= GPIO_MODER_MODER9_1;        // PinB9 - 10: Alternate function mode
  GPIOB->OTYPER &= GPIO_OTYPER_OT_9;		      // PinB9 - pushpull
  GPIOB->OSPEEDR &= ~GPIO_OSPEEDER_OSPEEDR9;	// PinB9 speed low
  GPIOB->PUPDR &= GPIO_PUPDR_PUPDR9;          // PinB9 no pullup
  GPIOB->ODR &= ~GPIO_ODR_9;                  // PinB9 = 0
  GPIOB->AFR[1] &= ~GPIO_AFRH_AFRH9;
  GPIOB->AFR[1] |= GPIO_AF_AF2 << (4 * (9 - 8));
  
  // init timer TIM17_CH1
  RCC->APB2ENR |= RCC_APB2ENR_TIM17EN;

  TIM17->CR1 = TIM_CR1_CEN      * 0   //*!<Counter enable */
              | TIM_CR1_UDIS    * 0   //*!<Update disable */
              | TIM_CR1_URS     * 0   //*!<Update request source */
              | TIM_CR1_OPM     * 0   //*!<One pulse mode */
              | TIM_CR1_ARPE    * 0   //*!<Auto-reload preload enable */
              | TIM_CR1_CKD_0   * 0   //*!<Bit 0 */
              | TIM_CR1_CKD_1   * 0;  //
  TIM17->CR2 = TIM_CR2_CCPC     * 0   //*!<Capture/Compare Preloaded Control */
              | TIM_CR2_CCUS    * 0   //*!<Capture/Compare Control Update Selection */
              | TIM_CR2_CCDS    * 0   //*!<Capture/Compare DMA Selection */
              | TIM_CR2_OIS1    * 0   //*!<Output Idle state 1 (OC1 output) */
              | TIM_CR2_OIS1N   * 0;  //*!<Output Idle state 1 (OC1N output) */
  TIM17->DIER = TIM_DIER_UIE    * 0   //*!<Update interrupt enable */
              | TIM_DIER_CC1IE  * 0   //*!<Capture/Compare 1 interrupt enable */
              | TIM_DIER_COMIE  * 0   //*!<COM interrupt enable */
              | TIM_DIER_BIE    * 0   //*!<Break interrupt enable */
              | TIM_DIER_UDE    * 0   //*!<Update DMA request enable */
              | TIM_DIER_CC1DE  * 1;   //*!<Capture/Compare 1 DMA request enable */
  TIM17->SR = 0;  //*!< TIM status register, */
  TIM17->EGR = 0; //*!< TIM event generation register, */
  TIM17->CCMR1 = TIM_CCMR1_CC1S_0 * 0   //*!<Bit 0 00: CC1 channel is configured as output*/
              | TIM_CCMR1_CC1S_1  * 0   //*!<Bit 1 */
              | TIM_CCMR1_OC1FE   * 1   //*!<Output Compare 1 Fast enable */
              | TIM_CCMR1_OC1PE   * 1   //*!<Output Compare 1 Preload enable */
              | TIM_CCMR1_OC1M_0  * 0   //*!<Bit 0 (Output Compare 1 Mode)*/
              | TIM_CCMR1_OC1M_1  * 1   //*!<Bit 1 110: PWM mode 1*/
              | TIM_CCMR1_OC1M_2  * 1;  //*!<Bit 2 */
  TIM17->CCER = TIM_CCER_CC1E     * 1   //*!<Capture/Compare 1 output enable */
              | TIM_CCER_CC1P     * 0   //*!<Capture/Compare 1 output Polarity 0: OC1 active high*/
              | TIM_CCER_CC1NE    * 0   //*!<Capture/Compare 1 Complementary output enable */
              | TIM_CCER_CC1NP    * 0;   //*!<Capture/Compare 1 Complementary output Polarity */
  TIM17->CNT = 0;           //*!< TIM counter register */
  TIM17->PSC = 2;           //*!< TIM prescaler register,
                            // The counter clock frequency (CK_CNT) is equal to fCK_PSC / (PSC[15:0] + 1)*/
  
  TIM17->ARR = TIM_WS_ARR;  //*!< TIM auto-reload register */
  TIM17->RCR = 0;           //*!< TIM  repetition counter register, */
  TIM17->CCR1 = TIM_WS_ONE; //*!< TIM capture/compare register 1,  */
  TIM17->BDTR = TIM_BDTR_DTG_0  * 0   //*!<Bit 0 */
              | TIM_BDTR_DTG_1  * 0   //*!<Bit 1 */
              | TIM_BDTR_DTG_2  * 0   //*!<Bit 2 */
              | TIM_BDTR_DTG_3  * 0   //*!<Bit 3 */
              | TIM_BDTR_DTG_4  * 0   //*!<Bit 4 */
              | TIM_BDTR_DTG_5  * 0   //*!<Bit 5 */
              | TIM_BDTR_DTG_6  * 0   //*!<Bit 6 */
              | TIM_BDTR_DTG_7  * 0   //*!<Bit 7 */
              | TIM_BDTR_LOCK_0 * 0   //*!<Bit 0 */
              | TIM_BDTR_LOCK_1 * 0   //*!<Bit 1 */
              | TIM_BDTR_OSSI   * 0   //*!<Off-State Selection for Idle mode */
              | TIM_BDTR_OSSR   * 0   //*!<Off-State Selection for Run mode */
              | TIM_BDTR_BKE    * 0   //*!<Break enable */
              | TIM_BDTR_BKP    * 0   //*!<Break Polarity */
              | TIM_BDTR_AOE    * 0   //*!<Automatic Output enable */
              | TIM_BDTR_MOE    * 1;  //*!<Main Output enable */
  TIM17->DCR = TIM_DCR_DBA_0  * 0   //*!<Bit 0 */
              | TIM_DCR_DBA_1 * 0   //*!<Bit 1 */
              | TIM_DCR_DBA_2 * 0   //*!<Bit 2 */
              | TIM_DCR_DBA_3 * 0   //*!<Bit 3 */
              | TIM_DCR_DBA_4 * 0   //*!<Bit 4 */
              | TIM_DCR_DBL_0 * 0   //*!<Bit 0 */
              | TIM_DCR_DBL_1 * 0   //*!<Bit 1 */
              | TIM_DCR_DBL_2 * 0   //*!<Bit 2 */
              | TIM_DCR_DBL_3 * 0   //*!<Bit 3 */
              | TIM_DCR_DBL_4 * 0;  //*!<Bit 4 */
  TIM17->DMAR = 0;            /*!< TIM DMA address for full transfer register,*/

  NVIC_SetPriority (TIM17_IRQn, (uint32_t) 0);			// установить приоритет прерывания от 0 до 3
  NVIC_EnableIRQ (TIM17_IRQn);			// разрешить прерывания от TIM17
  
  led_dma_init ();
  
  TIM17->CR1 |= TIM_CR1_CEN;

}


void led_buffer_clear (void)
{
  memset (g.led_buffer, TIM_WS_ZERO, LED_BUFER_SIZE);
  for (u16 *p_buffer = g.led_buffer; p_buffer < &g.led_buffer[LED_BUFER_SIZE]; p_buffer++)
  {
    *p_buffer = TIM_WS_ZERO;
  }
}


/*******************************************************************************
* заполнение буфера таймера
*******************************************************************************/
void led_buffer_set (color_t *stripe)
{
  u16 *p_buffer = g.led_buffer;
  u8 data;
  u8 mask;
  s16 pixel;
  
  for (pixel = 0; pixel < LED_COUNT; pixel++)
  {
    data = gamma_corr (stripe[pixel].r);
    for (mask = 0x80; mask > 0; mask >>= 1) 
    {
      if (data & mask)
      {
        *p_buffer = TIM_WS_ONE;
      }
      else
      {
        *p_buffer = TIM_WS_ZERO;
      }
      p_buffer++;
    }
    data = gamma_corr (stripe[pixel].g);
    for (mask = 0x80; mask > 0; mask >>= 1) 
    {
      *p_buffer++ = (data & mask) ? TIM_WS_ONE : TIM_WS_ZERO;
    }
    data = gamma_corr (stripe[pixel].b);
    for (mask = 0x80; mask > 0; mask >>= 1) 
    {
      *p_buffer++ = (data & mask) ? TIM_WS_ONE : TIM_WS_ZERO;
    }
  }
  *p_buffer = TIM_WS_RESET;  // формирование сброса "0" для следующего блока данных
//  g.led_buffer[LED_BUFER_SIZE] = TIM_WS_RESET;  // формирование сброса "0" для следующего блока данных
}


/*******************************************************************************
* гамма коррекция цветов (квадратичная)
*******************************************************************************/
u8 gamma_corr (u8 input)
{
  u8 result = input;  //((u32)input * (u32)input) / (u32)255;
  return result;
}

/*******************************************************************************
* Очистка буфера RGB
*******************************************************************************/
void stripe_clear (void)
{
  memset (g.stripe, 0, sizeof(g.stripe));
}

/*******************************************************************************
* Один раз заполнение тестовым паттерном
*******************************************************************************/
void stripe_test (void)
{
 /* static color_t pattern[8] = 
  {
    255, 0, 0,
    64, 0, 0,
    10, 0, 0,
    0, 255, 0,
    0, 64, 64,
    0, 0, 255,
    40, 40, 40,
    255, 255, 255
  };
  u8 n = 0;
  
  for (u8 led = 0; led < LED_COUNT; led++)
  {
    g.stripe[led] = pattern[n++];
    if (n >= 8)
    {
      n = 0;
    }
  }
*/}

//#pragma call_graph_root="interrupt"         // interrupt category
//void TIM17_IRQHandler (void)
//{
//  TIM17->SR = 0;  // сбросить флаги прерываний
//  TIM17->CCR1 = *p_buf;
//  p_buf++;
//  if (p_buf > (g.led_buffer + LED_BUFER_SIZE))
//  {
//    TIM17->CCR1 = TIM_WS_RESET;
//    TIM17->DIER = 0;
//  }
//}

void led_dma_init (void)
{
  RCC->AHBENR |= RCC_AHBENR_DMA1EN;
  
  DMA1->IFCR = 0xFFFFFFFF;
  
  DMA1_Channel1->CCR = DMA_CCR_EN     * 0 //*!< Channel enable                      */
                    | DMA_CCR_TCIE    * 1 //*!< Transfer complete interrupt enable  */
                    | DMA_CCR_HTIE    * 0 //*!< Half Transfer interrupt enable      */
                    | DMA_CCR_TEIE    * 0 //*!< Transfer error interrupt enable     */
                    | DMA_CCR_DIR     * 1 //*!< Data transfer direction 1: Read from memory*/
                    | DMA_CCR_CIRC    * 0 //*!< Circular mode                       */
                    | DMA_CCR_PINC    * 0 //*!< Peripheral increment mode           */
                    | DMA_CCR_MINC    * 1 //*!< Memory increment mode               */
                    | DMA_CCR_PSIZE_0 * 1 //*!< Bit 0  PSIZE[1:0] bits              */
                    | DMA_CCR_PSIZE_1 * 0 //*!< Bit 1 01: 16-bits                    */
                    | DMA_CCR_MSIZE_0 * 1 //*!< Bit 0 MSIZE[1:0] bits               */
                    | DMA_CCR_MSIZE_1 * 0 //*!< Bit 1 01: 16-bits                    */
                    | DMA_CCR_PL_0    * 1 //*!< Bit 0 PL[1:0] bits                  */
                    | DMA_CCR_PL_1    * 1 //*!< Bit 1 11: Very high                 */
                    | DMA_CCR_MEM2MEM * 0; //*!< Memory to memory mode              */
  DMA1_Channel1->CNDTR = LED_BUFER_SIZE + 1;
  DMA1_Channel1->CPAR = (u32)&TIM17->CCR1 + 1;
  DMA1_Channel1->CMAR = (u32)g.led_buffer;

  NVIC_SetPriority (DMA1_Channel1_IRQn, (uint32_t) 1);			// установить приоритет прерывания от 0 до 3
  NVIC_EnableIRQ (DMA1_Channel1_IRQn);			// разрешить прерывания от DMA1_Channel1
  
  DMA1_Channel1->CCR |= DMA_CCR_EN; //*!< Channel enable     
}

#pragma call_graph_root="interrupt"         // interrupt category
void DMA1_Channel1_IRQHandler (void)
{
  if (DMA1->ISR & DMA_ISR_TCIF1)
  {
    TIM17->DIER = 0;
    DMA1_Channel1->CCR &= ~DMA_CCR_EN; //*!< Channel disable 
  }
  DMA1->IFCR = DMA_IFCR_CGIF1   * 1 /*!< Channel 1 Global interrupt clear    */
              | DMA_IFCR_CTCIF1 * 1 /*!< Channel 1 Transfer Complete clear   */
              | DMA_IFCR_CHTIF1 * 1 /*!< Channel 1 Half Transfer clear       */
              | DMA_IFCR_CTEIF1 * 1;/*!< Channel 1 Transfer Error clear      */
}


/*******************************************************************************
*
*******************************************************************************/
void led_buffer_proc (void)
{
  static u32 led_buffer_timer;
  
  if (timer_end (&led_buffer_timer, 20))  // 50 раз в секунду
  {
    timer_reset (&led_buffer_timer);
    
    led_buffer_set (g.stripe);
    
    DMA1_Channel1->CNDTR = LED_BUFER_SIZE + 1;
    DMA1_Channel1->CCR |= DMA_CCR_EN; //*!< Channel enable 

    TIM17->DIER |= TIM_DIER_CC1DE;
    
    send_message (M_START_CALC);
  }  
}


void add_color (color_t *result, color_t *first, color_t *second)
{
  s32 temp;
  temp = first->r + second->r;
  if (temp > 255) temp = 255;
  result->r = temp;
  temp = first->g + second->g;
  if (temp > 255) temp = 255;
  result->g = temp;
  temp = first->b + second->b;
  if (temp > 255) temp = 255;
  result->b = temp;
}

void sub_color (color_t *result, color_t *first, color_t *second)
{
  s32 temp;
  temp = first->r - second->r;
  if (temp < 0) temp = 0;
  result->r = temp;
  temp = first->g - second->g;
  if (temp < 0) temp = 0;
  result->g = temp;
  temp = first->b - second->b;
  if (temp < 0) temp = 0;
  result->b = temp;
}

