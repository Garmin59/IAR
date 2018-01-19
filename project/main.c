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
#include  <stdint.h>
#include  <string.h>
#include  <stdio.h>


#include	"stm32f0xx.h"				// определени€ регистров и битовых переменных
#include	"stm32f051_it.h"
#include	"system_stm32f0xx.h"
#include	"stm32f0xx_conf.h"			// конфигураци€ используемых функций CMSIS
#include	"core_cm0.h"				// определени€ инлайнов
#include 	"effects.h"
#include  "main.h"
#include	"global.h"					// глобальные переменные
#include	"inits.h"					// константы настройки и функции инициализации
#include	"ws2811.h"
#include 	"messages.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/


Global	g;	// объ€вл€етс€ место дл€ структуры g как Global

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



#ifdef USE_FULL_ASSERT
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
#endif

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
