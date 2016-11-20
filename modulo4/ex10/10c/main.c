#include <stdio.h>
#include "conta_bits_zeroS.h"
#include "vec_conta_bits_zeroS.h"

int main(){
	
	int vec[] = { 3, 5, 12, 15};
	
	int elementosVetor = 4;
	int num_Bits_Zero = 0;
	
	num_Bits_Zero = vec_conta_bits_zeroS(vec, elementosVetor);
	
	printf("Total de bits a zero no vetor: %d\n", num_Bits_Zero);
		

return 0;
}
