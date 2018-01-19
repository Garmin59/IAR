// файл messages.c

#include	"stm32f0xx.h"				// определения регистров и битовых переменных
#include 	"messages.h"

__no_init	mess_state  p[MAX_MESSAGES];

/******************************************************************************
* Программа инициализации массива сообщений
******************************************************************************/
void 	init_messages	(void)
{
	u8	i;
	for (i = 0; i < MAX_MESSAGES; i++)
	{
		p[i] = NO_MESSAGE;
	}
}

/******************************************************************************
* Программа передачи сообщения
* вход - номер сообщения
* дополнительные параметры передаются через глобальную структуру данных
* выход - установка флага сообщения
******************************************************************************/
/*void send_message (u8 mes)
{
	if (p[mes] != MESSAGE_ACTIVE)
	{
		p[mes] = MESSAGE_SET;
	}
}*/

/******************************************************************************
* Программа получения сообщения
* вход - номер сообщения
* выход - состояние сообщения
******************************************************************************/
/*bool get_message (u8 mes)
{
	if (p[mes] == MESSAGE_ACTIVE)
	{
		return TRUE;
	}
	return FALSE;
}*/


/******************************************************************************
* Программа обработки запросов на сообщения
* вход - массив messages
* выход - массив messages
* Если сообщение активировано, значит все автоматы его отработали - сбросить сообщение
* Если сообщение выставлено - сделать его активным для следующего цикла
******************************************************************************/
void process_messages (void)
{
	u8	i;
	for (i = 0; i < MAX_MESSAGES; i++)
	{
		if (p[i] >= MESSAGE_ACTIVE)
		{
			p[i] = NO_MESSAGE;
		}		
		if (p[i] == MESSAGE_SET)
		{
			p[i] = MESSAGE_ACTIVE;
		}
	}
}



