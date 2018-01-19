// stm32f051_it.h

#ifndef __STM32F051_IT_H
#define __STM32F051_IT_H

#include  <stdbool.h>

#ifdef __cplusplus
 extern "C" {
#endif 
void  reset_isr           (void); // The reset handler
void  nm_isr              (void); // NMI Handler
void  fault_isr           (void); // Hard Fault Handler
void  int_default_handler (void); // Reserved
void  svc_handler         (void); // SVCall Handler
void  pend_sv_handler     (void); // PendSV Handler
void  systick_handler     (void); // SysTick Handler


static inline void  timer_reset     (uint32_t *timer);
static inline bool  timer_end       (uint32_t *timer, uint32_t delay);
static inline bool  timer_active    (uint32_t *timer, uint32_t delay);

static inline uint32_t	  system_time			(void);

extern volatile uint32_t system_timer;	// системный счётчик времени в мс.

#ifdef __cplusplus
}
#endif



/*******************************************************************************
* получение системного времени
*
*******************************************************************************/
static inline uint32_t system_time (void)
{
	return (system_timer);
}

/*******************************************************************************
* сброс таймера
*******************************************************************************/
static inline void timer_reset (uint32_t *timer)
{
  *timer = system_time ();
}

/*******************************************************************************
* условие срабатывания таймера
*******************************************************************************/
static inline bool timer_end (uint32_t *timer, uint32_t delay)
{
  return ((system_time () - *timer) >= delay);
}

/*******************************************************************************
* условие установленного таймера
*******************************************************************************/
static inline bool timer_active (uint32_t *timer, uint32_t delay)
{
  return ((system_time () - *timer) < delay);
}

#endif  // #ifndef __STM32F051_IT_H