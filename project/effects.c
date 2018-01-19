// file effects.c

#include  <string.h>
#include	"stm32f0xx.h"				// ����������� ��������� � ������� ����������
#include	"core_cm0.h"				// ����������� ��������
#include	"stm32f051_it.h"    // ��������� ����� � �������
#include 	"messages.h"
#include 	"effects.h"
#include	"ws2811.h"	

#include	"global.h"					// ���������� ����������


static pixel_t  layer[NUM_LAYERS][LED_COUNT];


void effect1          (void);
void effect2          (void);
void pixel_init       (pixel_t* layer);
void light_shadow     (pixel_t *layer, light_t *light);
void set_status_pixel (pixel_t *pixel, s32 pos, light_t *light);
void proc_pixel       (pixel_t *pixel);
void light_moving	    (light_t* light);
void sum_layers       (void);
// �������
void light_eff_reverse (eff_struct *eff);
void light_eff_up      (eff_struct *eff);

/*******************************************************************************
* ��������� ��������
*******************************************************************************/
void effects_proc (void)
{
  if (get_message (M_START_CALC)) // ������ 20 �� ����� ������ � ������ �������
  {
    effect2 ();
  }
  sum_layers ();
}

/*******************************************************************************
* ������������ ���� � ���� RGB �����
*******************************************************************************/
void sum_layers (void)
{
  s32 i;
  s32 n;
  color_t *layer_rgb;
  color_t *stripe_rgb;
  
  stripe_clear ();
  
  for (i = 0; i < NUM_LAYERS; i++)  // ��� ���� ����
  {
    for (n = 0; n < LED_COUNT; n++)
    {
      layer_rgb = &layer[i][n].color;
      stripe_rgb = &g.stripe[n];
      stripe_rgb->r |= layer_rgb->r;
      stripe_rgb->g |= layer_rgb->g;
      stripe_rgb->b |= layer_rgb->b;      
    }
  }
}

/*******************************************************************************
* ��������� ������� �� �����
*******************************************************************************/
void light_shadow (pixel_t *layer, light_t *light)
{
  pixel_t *pixel;
  color_t *color;
  color_t *pattern;
  s16 i;
  s16 n;
  s16 start;
  s16 end;
  
  for (i = 0; i < LED_COUNT; i++) // ��� ���� �������� � �����
  {
  // ��������� ������� ������� (��� � ��� ������)
    pixel = &layer[i];
    start = light->position;
    end = light->position + light->size;
    if ((i >= start) && (i < end))  // ���� ������� ������ ��������� (����������) - ���������� ������ � ����
    {
      pixel->status = P_STAT_ON;  // ������ ��������� - ��������
      pixel->light = light;				// ������������� ������ �� ���� ���������
      
      pattern = light->pattern;
      n = i - light->position;
      color = &pattern[n];
      pixel->set.r = color->r;  // �������� ��������� ����� �������
      pixel->set.g = color->g;
      pixel->set.b = color->b;
      pixel->delta.r = (pixel->set.r - pixel->color.r) * light->d_on / 255; // ��� ���������
      if (!pixel->delta.r) pixel->delta.r = 1;                              // ����������� ������ ����
      pixel->delta.g = (pixel->set.g - pixel->color.g) * light->d_on / 255;
      if (!pixel->delta.g) pixel->delta.g = 1;
      pixel->delta.b = (pixel->set.b - pixel->color.b) * light->d_on / 255;
      if (!pixel->delta.b) pixel->delta.b = 1;
    }
    else if ((pixel->light == light)          // ���� ���� ������� � ������� ��������� (������)
            && (pixel->status == P_STAT_ON))  // � ���� �� ���������
    {
      if ((pixel->color.r != light->back.r)   // ���� ���� ������� �� ����� ����� ����
        || (pixel->color.g != light->back.g)
        || (pixel->color.b != light->back.b))
      {
        pixel->status = P_STAT_OFF;           // ������� ��������� - ���������� ���������

        pixel->delta.r = (pixel->color.r - light->back.r) * light->d_off / 255; // ��� ���������
        if (!pixel->delta.r) pixel->delta.r = 1;                                // ���� ������ ����
        pixel->delta.g = (pixel->color.g - light->back.g) * light->d_off / 255;
        if (!pixel->delta.g) pixel->delta.g = 1;
        pixel->delta.b = (pixel->color.b - light->back.b) * light->d_off / 255;
        if (!pixel->delta.b) pixel->delta.b = 1;
      }
      else                            // ���� ���� ������� ����� ����� ����
      {
        pixel->status = P_STAT_EMPTY; // ���������� ������ - ������, ������ �� ������
      }
    }
    // ����� ������� �� ������������
    proc_pixel (pixel);   // ������ ��������� ����� ��������
  }
}

/*******************************************************************************
* ��������� �������� �������
*******************************************************************************/
void proc_pixel (pixel_t *pixel)
{
  pixel_status stat = pixel->status;
  u32  step_t;
  u32  d_time;
  u8   delta;
  
  switch (stat)
  {
  case P_STAT_ON: // ������� ������� - ����������
    if (timer_end (&pixel->color_timer, (u32)(pixel->light)->d_time))
    {
      d_time = (u32)(pixel->light)->d_time;
      step_t = (system_time () - pixel->color_timer) / d_time;  // ������� ����� ���������� �� ��������� �����
      timer_reset (&pixel->color_timer);
      
      delta = pixel->delta.r * step_t;  // �������� ���� �� ������, ����� �������� �������� �����
      if ((pixel->set.r - pixel->color.r) > delta)
      {
        pixel->color.r += delta;
      }
      else
      {
        pixel->color.r = pixel->set.r;
      }

      delta = pixel->delta.g * step_t;
      if ((pixel->set.g - pixel->color.g) > delta)
      {
        pixel->color.g += delta;
      }
      else
      {
        pixel->color.g = pixel->set.g;
      }

      delta = pixel->delta.b * step_t;
      if ((pixel->set.b - pixel->color.b) > delta)
      {
        pixel->color.b += delta;
      }
      else
      {
        pixel->color.b = pixel->set.b;
      }
    }
    break;
    
  case P_STAT_OFF:  // ������� ������
    if (timer_end (&pixel->color_timer, (u32)(pixel->light)->d_time))
    {
      d_time = (u32)(pixel->light)->d_time;
      step_t = (system_time () - pixel->color_timer) / d_time; // ������� ����� ���������� �� ��������� �����
      timer_reset (&pixel->color_timer);
      
      delta = pixel->delta.r * step_t;  // �������� ���� �� ������, ����� �������� �������� �����
      if ((pixel->color.r - (pixel->light)->back.r) > delta)
      {
        pixel->color.r -= delta;
      }
      else
      {
        pixel->color.r = (pixel->light)->back.r;  // ��������������� �� ������� �����
      }

      delta = pixel->delta.g * step_t;
      if ((pixel->color.g - (pixel->light)->back.g) > delta)
      {
        pixel->color.g -= delta;
      }
      else
      {
        pixel->color.g = (pixel->light)->back.g;
      }

      delta = pixel->delta.b * step_t;
      if ((pixel->color.b - (pixel->light)->back.b) > delta)
      {
        pixel->color.b -= delta;
      }
      else
      {
        pixel->color.b = (pixel->light)->back.b;
      }
    }
    break;
    
    default:
    break;
  }
}


/*******************************************************************************
* �������� ���������
*******************************************************************************/
void light_moving (light_t *light)
{
  if (light->step_time) // ���������, ���� ������� ����� �� ���
  {
    if (timer_end (&light->mov_timer, light->step_time))
    {
      timer_reset (&light->mov_timer);
      if (light->direction == MOV_UP)
      {
        light->position++;  // ��� �����
      }
      else
      {
        light->position--;  // ��� ����
      }
    }
  }
}

/*******************************************************************************
* ��������� ���� ����
*******************************************************************************/
void init_layers (void)
{
  for (u8 n = 0; n < NUM_LAYERS; n++)
  {
    pixel_init (layer[n]);
  }
}

/*******************************************************************************
* ��������� ����
*******************************************************************************/
void pixel_init (pixel_t *layer)
{
  const pixel_t zero_pixel = 
  {
    BLACK,
    BLACK,
    BLACK,
    P_STAT_EMPTY,
    0,
    0
  };
  
  for (s32 i = 0; i < LED_COUNT; i++)
  {
    memcpy (layer, &zero_pixel, sizeof (zero_pixel));
    // layer->set.r = 0;
    // layer->set.g = 0;
    // layer->set.b = 0;
    // layer->color.r = 0;
    // layer->color.g = 0;
    // layer->color.b = 0;
    // layer->delta.r = 0;
    // layer->delta.g = 0;
    // layer->delta.b = 0;
    // layer->status = P_STAT_EMPTY;
    // layer->light = 0;
    layer->color_timer = system_time ();
    layer++;
  }
}

/*******************************************************************************
* ������� ���� - ���� �����
*******************************************************************************/
void effect1 (void)
{
  const static color_t  p_RED[1]    = {RED};  //, CIAN, GREEN, YELLOW, ORANGE, RED}; // � ��������� 3 �������
  const static color_t  p_GREEN[1]  = {GREEN};
  const static color_t  p_ORANGE[1] = {ORANGE};
  const static color_t  p_BLUE[1]   = {BLUE};
  const static color_t  p_ROSE[1]   = {ROSE};
  const static color_t  p_CIAN[1]   = {CIAN};
  const static color_t  p_YELLOW[1] = {YELLOW};  //, RED, CIAN};  //, GREEN, YELLOW, ORANGE, RED}; // � ��������� 3 �������
  const static color_t  p_OCEAN[1]  = {OCEAN};
  static light_t 	l_1 = 
  {
    (color_t *)p_RED,      // ��������� �� ������� ������
    DARK_RED,   // ������� ����
    1,          // ������ � ��������
    0,          // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_2 = 
  {
   (color_t *) p_GREEN,    // ��������� �� ������� ������
    DARK_GREEN, // ������� ����
    1,          // ������ � ��������
    -6,         // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_3 = 
  {
    (color_t *)p_ORANGE,   // ��������� �� ������� ������
    DARK_ORANGE, // ������� ����
    1,          // ������ � ��������
    -12,        // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_4 = 
  {
    (color_t *)p_BLUE,     // ��������� �� ������� ������
    DARK_BLUE,  // 
    1,          // ������ � ��������
    -18,         // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_5 = 
  {
    (color_t *)p_ROSE,     // ��������� �� ������� ������
    DARK_ROSE,  //
    1,          // ������ � ��������
    -26,         // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_6 = 
  {
    (color_t *)p_CIAN,     // ��������� �� ������� ������
    DARK_CIAN,  //
    1,          // ������ � ��������
    -32,         // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_7 = 
  {
    (color_t *)p_YELLOW,   // ��������� �� ������� ������
    DARK_YELLOW,  //
    1,          // ������ � ��������
    -38,         // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_8 = 
  {
    (color_t *)p_OCEAN,    // ��������� �� ������� ������
    DARK_OCEAN, //
    1,          // ������ � ��������
    -44,         // �������
    MOV_UP,     // ����������� ��������
    40,         // ����� ��������� (�� ���)
    10,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    300,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };

  static eff_struct light1 = {EFF_INIT, &l_1, layer[0]};
  static eff_struct light2 = {EFF_INIT, &l_2, layer[0]};
  static eff_struct light3 = {EFF_INIT, &l_3, layer[0]};
  static eff_struct light4 = {EFF_INIT, &l_4, layer[0]};
  static eff_struct light5 = {EFF_INIT, &l_5, layer[0]};
  static eff_struct light6 = {EFF_INIT, &l_6, layer[0]};
  static eff_struct light7 = {EFF_INIT, &l_7, layer[0]};
  static eff_struct light8 = {EFF_INIT, &l_8, layer[0]};

// ��� ������  
  light_eff_up (&light1); // ������ �����
  light_eff_up (&light2);
  light_eff_up (&light3);
  light_eff_up (&light4);
  light_eff_up (&light5);
  light_eff_up (&light6);
  light_eff_up (&light7);
  light_eff_up (&light8);
  
  //light_shadow (layer[0], &l_1);
    
}


/*******************************************************************************
* ����� ����� ����-����
*******************************************************************************/
void light_eff_reverse (eff_struct *eff)
{
  switch (eff->status)
  {
  case EFF_INIT:
    //pixel_init (light->layer);
    eff->status = EFF_UP;
    timer_reset (&(eff->light)->mov_timer);
   // (eff->light)->mov_timer = system_time ();
    break;
    
  case EFF_UP:
    if ((eff->light)->position >= (LED_COUNT - (eff->light)->size))
    {
      (eff->light)->direction = MOV_DOWN;
      eff->status = EFF_DOWN;
    }
    break;
    
  case EFF_DOWN:
    if ((eff->light)->position < 0)
    {
      (eff->light)->direction = MOV_UP;
      eff->status = EFF_UP;
    }
    break;
    
  default:
    pixel_init (eff->layer);
    eff->status = EFF_UP;  
    break;
  }
  light_moving (eff->light);
  light_shadow (eff->layer, eff->light);
}

/*******************************************************************************
* ����� ����� ����� �����
*******************************************************************************/
void light_eff_up (eff_struct *eff)
{
  switch (eff->status)
  {
  case EFF_INIT:
    eff->status = EFF_UP;
    timer_reset (&(eff->light)->mov_timer);
    break;
    
  case EFF_UP:
    if ((eff->light)->position >= LED_COUNT)
    {
      (eff->light)->position = -((eff->light)->size);
    }
    break;
    
  case EFF_DOWN:
    break;
    
  default:
    pixel_init (eff->layer);
    eff->status = EFF_UP;  
    break;
  }
  light_moving (eff->light);
  light_shadow (eff->layer, eff->light);
}


/*******************************************************************************
* ������� ������� ����� ����� �� ������
*******************************************************************************/
void effect2 (void)
{
  const static color_t  patterns[8] = {RED, GREEN, ORANGE, BLUE, ROSE, CIAN, YELLOW, VIOLET};
  const static color_t  backs[8]    = {DARK_RED, DARK_GREEN, DARK_ORANGE, DARK_BLUE, DARK_ROSE, DARK_CIAN, DARK_YELLOW, DARK_VIOLET};
  static color_t  ch_patt[2] = {RED, WHITE};
  static light_t 	l_21 = 
  {
    ch_patt,   // ��������� �� ������� ������
    DARK_RED,   // ������� ����
    2,          // ������ � ��������
    0,          // �������
    MOV_UP,     // ����������� ��������
    255,         // ����� ��������� (�� ���)
    5,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    80,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
  static light_t 	l_22 = 
  {
    ch_patt,   // ��������� �� ������� ������
    DARK_RED,   // ������� ����
    2,          // ������ � ��������
    0,          // �������
    MOV_UP,     // ����������� ��������
    255,         // ����� ��������� (�� ���)
    3,         // ����� ���������� (�� ���)
    20,         // ��� ���/���� (��)
    40,        // �������� �������� (�� �� �����)
    0           // ������ ��������
  };
 
  static eff_stat  status2;
  static light_t  *p_light = &l_21;
  static u8 count_color = 0;

  switch (status2)
  {
  case EFF_INIT:
    status2 = EFF_UP;
    timer_reset (&p_light->mov_timer);
    break;
    
  case EFF_UP:
    if (p_light->position >= LED_COUNT)
    {
      p_light->position = 1 - p_light->size;
      count_color++;
      if (count_color > 7) count_color = 0;
      if ((count_color %2) == 1)
      {
        p_light = &l_22;
      }
      else
      {
        p_light = &l_21;
      }
      ch_patt[0] = patterns[count_color];
      p_light->back = backs[count_color];
    }
    break;
    
  default:
    pixel_init (layer[0]);
    status2 = EFF_UP;  
    break;
  }
  
  light_moving (p_light);
  light_shadow (layer[0], p_light);
  
}