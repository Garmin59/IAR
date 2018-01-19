// файл messages.h
// определения глобальных структур


#ifndef	_MESSAGES_H_
#define	_MESSAGES_H_

#include  <stdbool.h>

typedef enum	
{
	NO_MESSAGE =      0, 
	MESSAGE_SET =     1,
	MESSAGE_ACTIVE =  2
} mess_state;

// типы сообщений (соответствуют записям в структуре messages)
#define	M_START_CALC			      1	// можно начинать просчёт эффектов
#define	M_VOL_SEND			        2	// передать громкость и мют по SPI

#define	MAX_MESSAGES	        3

extern mess_state p[MAX_MESSAGES];

void 		    init_messages		  (void);
inline void send_message		  (u8 mes);
inline bool get_message			  (u8 mes);
void		    process_messages	(void);

/******************************************************************************
* Программа получения сообщения
* вход - номер сообщения
* выход - состояние сообщения
******************************************************************************/
inline bool get_message (u8 mes)
{
	if (p[mes] == MESSAGE_ACTIVE)
	{
		return true;
	}
	return false;
}

/******************************************************************************
* Программа передачи сообщения
* вход - номер сообщения
* дополнительные параметры передаются через глобальную структуру данных
* выход - установка флага сообщения
******************************************************************************/
inline void send_message (u8 mes)
{
	if (p[mes] != MESSAGE_ACTIVE)
	{
		p[mes] = MESSAGE_SET;
	}
}


#endif	// _MESSAGES_H_
