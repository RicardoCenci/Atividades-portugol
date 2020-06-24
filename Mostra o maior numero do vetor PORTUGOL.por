programa
{
	//O usuario escreve um vertor de 10 itens e o algoritimo retorna o MAIOR numero do vetor, com FUNÇÕES
	 
	funcao inicio()
	{
		inteiro 	VETOR[10],
				x,
				maiorNum=0

			escreva("Escreva 10 numeros para o vetor \n")
			
			para(x=0;x<10;x++)	//ESTRUTURA DE REPETIÇÃO PARA LER OS NUMEROS DO VETOR
				{
					//CASO SEJA NECESSARIO COLOCAR NUMEROS ALEATORIOS NAS POSIÇÕES DOS VETORES RETIRAR O LEIA
					leia(VETOR[x])	//LE A POSIÇÃO X DO VETOR
				}
				
			para( x=0 ; x < 10 ; x++ ){	//Percorre o vetor procurando o maior numero
				maiorNum = testaMaior( maiorNum , VETOR[x] ) //Passa as variaveis para a Função que testa o numero e atribui o retorno da função na variavel
			}
				
			escreva("O maior numero do vetor é ", maiorNum)
	}
	
	funcao inteiro testaMaior(inteiro MaiorNum,inteiro VetorNum)
	{
		se( MaiorNum > VetorNum ){ //Se o MaiorNumero atual for MAIOR que a posição atual do vetor, ele retorna o maior numero
			retorne MaiorNum //Retorna o numero DO MaiorNum para ser atribuido a variavel maiorNUM
			
		}senao{			//Se o numero do VETOR não é menor que o MAIOR NUMERO, entao obviamente o NUMERO DO VETOR É O MAIOR NUMERO 
			retorne VetorNum//Retorna o Numero do VETOR para ser atribuido a variavel maiorNum
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
