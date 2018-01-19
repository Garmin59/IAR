#ifndef _INITS_H_
#define _INITS_H_

// file inits.h

#define APBCLK   	48000000UL		// ������� ������������ usart
#define BAUDRATE 	115200UL   		// �������� usart
#define	AF0			0x00
#define	AF1			0x01			// �������������� ������� 1

// ��������� ����������� ������� �������������
//



void init_irq (void);
void system_clocks_init (void);


#endif
