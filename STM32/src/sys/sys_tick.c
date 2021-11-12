
#include "sys.h"

#include <stm32f10x.h>

//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// 模块常量

enum {
    TICK_COUNT_PER_US = 9 ,
    TICK_COUNT_PER_MS = 9000 ,
};

union TickData {
    uint8_t  ui8[8];
    uint16_t ui16[4];
    uint32_t ui32[2];
    uint64_t ui64 ;
    int64_t  i64 ;
};

//--------------------------------------------------------------------------------
// 模块变量

static uint32_t  tick_high ;
static uint32_t  tick_low  ;

//--------------------------------------------------------------------------------
// 模块函数

void SysTick_Handler(void)
{
	tick_low++;
	if ( tick_low >= 0x100 ) {
		tick_low = 0 ;
		tick_high++;
	}
}

//--------------------------------------------------------------------------------
// 公共变量
//--------------------------------------------------------------------------------
// 公共函数

void sys_tick_init(void)
{

	tick_high = 0 ;
	tick_low  = 0 ;
	SysTick->LOAD  =  0xFFFFFF   ;
    SysTick->CTRL = ( 0x00
    		      //| SysTick_CTRL_CLKSOURCE_Msk   // SYSTICK使用内核时钟源
    		      | SysTick_CTRL_TICKINT_Msk     // 开启SYSTICK中断
    		      | SysTick_CTRL_ENABLE_Msk      // 开启SYSTICK
	              );
}

int64_t sys_tick_get_tick(void) {
	const uint32_t tick = 0xFFFFFF - SysTick->VAL ;
	union TickData data;
    data.ui32[0] = ( tick_low << 24 ) + tick ;
    data.ui32[1] = tick_high ;
    return data.i64;
}

void sys_tick_wait_to(int64_t tick){
    while ( sys_tick_get_tick() < tick ) {  ; }
}

int sys_tick_calc_tick_us(int us) {
    return us * TICK_COUNT_PER_US;
}

int sys_tick_calc_tick_ms(int ms) {
    return ms * TICK_COUNT_PER_MS;
}

void sys_tick_delay_us(int us) {
    const int64_t tick64 = sys_tick_get_tick() + sys_tick_calc_tick_us(us);
    sys_tick_wait_to( tick64 );
}

void sys_tick_delay_ms(int ms) {
    const int32_t tick = sys_tick_calc_tick_ms(ms);
    sys_tick_wait_to( sys_tick_get_tick() + tick );
}

//--------------------------------------------------------------------------------



