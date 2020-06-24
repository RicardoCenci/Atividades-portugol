programa
{
	//Diferente do outro que diz qual o numero correspondente na sequencia, este retorna o proximo numero dela
	//Diz qual o proximo numero na sequencia de Fibonacci
	funcao inicio(){
	inteiro 	n1=1,
			n2=1,
			n3=1, 
			NUMERO,
			CONTADOR=1
			
		escreva("Escreva um numero para receber o proximo numero da Sequencia de Fibonacci\n")	//"\n" tem a função de QUEBRA DE LINHA
		leia(NUMERO)		//Le o numero desejado na Sequencia de Fibonacci
			
		enquanto( n3 < NUMERO ){//Estrutura de repetição que calcula a sequencia de Fibonacci ATE ela chegar no NUMERO
			n3 = n2 + n1
			n2 = n1
			n1 = n3
			CONTADOR++	//CONTADOR++ == CONTADOR=CONTADOR+1
		}
				
		se(n3==NUMERO){		//IMPEDE QUE O NUMERO SEJA ELE MESMO
			n3=n2+n1
			n2=n1
			n1=n3
		}
		//Escreve o ultimo numero calculado da sequencia
		escreva("O proximo numero depois de ", NUMERO," é ",n1)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
