#ifndef _INITS_H_
#define _INITS_H_

// file inits.h

#define APBCLK   	48000000UL		// частота тактировани€ usart
#define BAUDRATE 	115200UL   		// скорость usart
#define	AF0			0x00
#define	AF1			0x01			// альтернативна€ функци€ 1

// заголовки объ€вленных функций инициализации
//



void init_irq (void);
void system_clocks_init (void);


#endif
