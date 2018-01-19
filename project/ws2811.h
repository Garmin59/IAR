// file ws2811.h

#ifndef WS_2811_H
#define WS_2811_H


void  init_ws2811_pin   (void);
void  led_buffer_clear  (void);
void  led_buffer_proc   (void);
void  led_buffer_set    (color_t *stripe);
u8    gamma_corr        (u8 input);
void  stripe_test       (void);
void  stripe_clear      (void);
void  led_dma_init      (void);

void  add_color         (color_t *result, color_t *first, color_t *second);
void  sub_color         (color_t *result, color_t *first, color_t *second);

#endif  // #ifndef WS_2811_H