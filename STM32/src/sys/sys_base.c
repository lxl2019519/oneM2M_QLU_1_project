
#include "sys.h"

//********************************************************************************
//THUMBָ�֧�ֻ������
//�������·���ʵ��ִ�л��ָ��WFI
void WFI_SET(void)
{
	//__ASM volatile("wfi");
	__asm__ __volatile__( "wfi" );
}
//�ر������ж�
void INTX_DISABLE(void)
{
	//__ASM volatile("cpsid i");
	__asm__ __volatile__( "cpsid i" );
}
//���������ж�
void INTX_ENABLE(void)
{
	//__ASM volatile("cpsie i");
	__asm__ __volatile__( "cpsie i" );
}
//����ջ����ַ


