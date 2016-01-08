#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
	struct a
	{
		int m_slen;
		int m_num;
		int m_index;
	};
	struct b
	{
		int m_num;
		int m_index;
		int m_other;
	};

	struct a s_a;
	s_a.m_slen = 3;
	s_a.m_num = 12;
	s_a.m_index = 0;
	
	struct a *s_pa = &s_a;

	struct b *s_b = (struct b*)s_pa;
	printf("s_b.m_num = %d\n", s_b->m_num);
	return 0;
}
