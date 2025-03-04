typedef struct Test_T1 Test_T1;
typedef struct Test_T2 Test_T2;
typedef struct Test_T3 Test_T3;
typedef struct Test_T4 Test_T4;
typedef struct Test_T5 Test_T5;
typedef struct Test_T6 Test_T6;
typedef struct Test_T7 Test_T7;
typedef struct Test_T8 Test_T8;
struct Test_T1
{
	BYTE	a;
	uchar	_pad1[7];
};
#define Test_T1_size 8
#define Test_T1_map {0}
struct Test_T2
{
	INT	a;
	uchar	_pad4[4];
};
#define Test_T2_size 8
#define Test_T2_map {0}
struct Test_T3
{
	INT	a;
	INT	b;
};
#define Test_T3_size 8
#define Test_T3_map {0}
struct Test_T4
{
	LONG	a;
};
#define Test_T4_size 8
#define Test_T4_map {0}
struct Test_T5
{
	BYTE	a;
	uchar	_pad1[3];
	INT	b;
};
#define Test_T5_size 8
#define Test_T5_map {0}
struct Test_T6
{
	INT	a;
	struct{ INT t0; INT t1; }	b;
	uchar	_pad12[4];
	String*	c;
};
#define Test_T6_size 24
#define Test_T6_map {0x20,}
struct Test_T7
{
	INT	a;
	uchar	_pad4[4];
	String*	b;
};
#define Test_T7_size 16
#define Test_T7_map {0x40,}
struct Test_T8
{
	String*	a;
};
#define Test_T8_size 8
#define Test_T8_map {0x80,}
