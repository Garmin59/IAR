
#ifndef _GLOBAL_H_
#define _GLOBAL_H_

#include "stdint.h"
#include	"stm32f0xx.h"

// file global.h
// ����������� ���������� ���������� �������


/* Construct define ----------------------------------------------------------*/

//#define TIM_WS_ARR    19  //1250ns old ws2811
//#define TIM_WS_ZERO   8   // 450ns
//#define TIM_WS_ONE    13  // 800ns
//#define TIM_WS_RESET  0
#define TIM_WS_ARR    21  // 1390ns new ws2811
#define TIM_WS_ZERO   5   // 300ns
#define TIM_WS_ONE    18  // 1090ns 
#define TIM_WS_RESET  0

#define LED_COUNT       50  // ����� ����������� � �������
#define LED_BUFER_SIZE  (LED_COUNT * 24)  // ����� ������ ��� ������ ����������
#define NUM_LAYERS      (3)  // ����� ������������� ���� ��������

/* Global data ---------------------------------------------------------------*/


#pragma pack(4)
typedef struct Global
{
  u16      led_buffer[LED_BUFER_SIZE + 1];
  color_t stripe[LED_COUNT];
}Global;
#pragma pack()


/* Exported constants --------------------------------------------------------*/
extern Global	g;

#endif
