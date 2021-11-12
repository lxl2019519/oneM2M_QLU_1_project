#include "dev.h"

#include <stm32f10x.h>

//--------------------------------------------------------------------------------
/*
    LED0 ---- PA8
    LED1 ---- PD2
*/

//--------------------------------------------------------------------------------
// 模块常量
//--------------------------------------------------------------------------------
// 模块变量
//--------------------------------------------------------------------------------
// 模块函数
//--------------------------------------------------------------------------------
// 公共变量
//--------------------------------------------------------------------------------
// 公共函数

void dev_led_init(void) {
	// 打开 GPIOA  GPIOD  端口的时钟
    RCC_APB2PeriphClockCmd( 0
            | RCC_APB2Periph_GPIOA
            //| RCC_APB2Periph_GPIOB
            //| RCC_APB2Periph_GPIOC
            | RCC_APB2Periph_GPIOD
            , ENABLE );

    GPIO_InitTypeDef gpio_data;

    gpio_data.GPIO_Pin   = GPIO_Pin_8        ;
    gpio_data.GPIO_Speed = GPIO_Speed_2MHz   ;
    gpio_data.GPIO_Mode  = GPIO_Mode_Out_PP  ; // 普通开漏输出模式
    GPIO_Init( GPIOA, &gpio_data ) ;

    gpio_data.GPIO_Pin   = GPIO_Pin_2        ;
    gpio_data.GPIO_Speed = GPIO_Speed_2MHz   ;
    gpio_data.GPIO_Mode  = GPIO_Mode_Out_PP  ; // 普通开漏输出模式
    GPIO_Init( GPIOD, &gpio_data ) ;

    // 设置端口状态
    GPIO_SetBits( GPIOA, GPIO_Pin_8 );
    GPIO_SetBits( GPIOD, GPIO_Pin_2 );
}

void dev_led_enable(int index) {
    switch (index) {
    case 0:    GPIO_ResetBits( GPIOA , GPIO_Pin_8  );    break;
    case 1:    GPIO_ResetBits( GPIOD , GPIO_Pin_2  );    break;
    }
}

void dev_led_disable(int index) {
    switch (index) {
    case 0:    GPIO_SetBits  ( GPIOA , GPIO_Pin_8  );    break;
    case 1:    GPIO_SetBits  ( GPIOD , GPIO_Pin_2  );    break;
    }
}

//--------------------------------------------------------------------------------
