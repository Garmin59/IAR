// file effects.h

#ifndef	_EFFECTS_H_
#define	_EFFECTS_H_


typedef struct
{
  u8 r;
  u8 g;
  u8 b;
} color_t;

#define WHITE   255, 255, 255

#define RED     255, 0,   0
#define ROSE    255, 64,  64
#define ORANGE  255, 32,  0
#define YELLOW  255, 80, 0
#define LIME    64,  255, 0
#define GREEN   0,   255, 0
#define CIAN    0,   255, 255
#define OCEAN   0,   64,  255
#define BLUE    0,   0,   255
#define VIOLET  255, 0,   255
#define GREY    64,  64,  64

#define DARK_RED     32,  0,   0
#define DARK_ROSE    32,  8,   8
#define DARK_ORANGE  32,  8,   0
#define DARK_YELLOW  32,  20,  0
#define DARK_LIME    8,   32,  0
#define DARK_GREEN   0,   32,  0
#define DARK_CIAN    0,   32,  32
#define DARK_OCEAN   0,   8,   32
#define DARK_BLUE    0,   0,   32
#define DARK_VIOLET  32,  0,   32
#define DARK_GREY    8,   8,   16

#define BLACK   0,   0,   0


typedef enum
{
  P_STAT_ON,
  P_STAT_OFF,
  P_STAT_EMPTY
} pixel_status;

typedef enum
{
  MOV_UP,
  MOV_DOWN
} side_t;

typedef struct  // ���������
{
  color_t   *pattern;   // ��������� �� ������� ������
  color_t   back;       // ������� ����, ������� ������� ����� ���������
  s16       size;       // ������ � ��������
  s16       position;   // �������
  side_t    direction;  // ����������� ��������
  u8        d_on;       // ����� ��������� (�� ���)
  u8        d_off;      // ����� ���������� (�� ���)
  u8        d_time;     // ��� ���/���� (��)
  u16       step_time;  // �������� �������� (�� �� �����)
	u32				mov_timer;	// ������ ��������
} light_t;

typedef struct  // �������
{
  color_t       set;          // ������������� ���� �������
  color_t       color;        // ������� ���� �������
  color_t       delta;        // ��� ��������� �����
  pixel_status  status;       // ������ (ON / OFF / EMPTY)
  light_t       *light;       // ��������� �� ���������
  u32           color_timer;  // ������ ��������� �������
} pixel_t;


typedef enum  // ��������� ��������� �������� (����� ���������) 
{
  EFF_INIT,
  EFF_UP,
  EFF_DOWN,
  EFF_WAIT,
  EFF_STOP
} eff_stat;
  
typedef struct  // ��������� ��������� �������
{
  eff_stat  status;
  light_t   *light;
  pixel_t   *layer;
} eff_struct;

void effects_proc (void);
void init_layers (void);

#endif // #ifndef	_EFFECTS_H_