programa
{
	//O usuario escreve um vertor de 10 itens e o algoritimo retorna o MAIOR numero do vertor, com FUNÇÕES
	 
	funcao inicio()
	{
		inteiro 	VETOR[10],
				x,
				maiorNum=0

			escreva
				("Escreva 10 numeros para o vetor \n")
			para//ESTRUTURA DE REPETIÇÃO PARA LER OS NUMEROS DO VETOR
			(x=0;x<10;x++)//CASO SEJA NECESSARIO COLOCAR NUMEROS ALEATORIOS NAS POSIÇÕES DOS VETORES RETIRAR O LEIA
				{
					leia//LE A POSIÇÃO X DO VETOR
						(VETOR[x])
				}
				
			para//Percorre o vertor procurando o maior numero
			(x=0;x<10;x++)
				{
					maiorNum=testaMaior(maiorNum,VETOR[x])//Passa as variaveis para a Função que testa o numero e atribui o retorno da função na variavel
				}
				
			escreva
				("O maior numero do vetor é ", maiorNum)
	}
	
	funcao inteiro testaMaior(inteiro MaiorNum,inteiro VetorNum)
	{
		se//Se o MaiorNumero atual for MAIOR que a posição do vetor, ele retorna o maior numero
		(MaiorNum>VetorNum)
		{
			retorne MaiorNum//Retorna o numero DO MaiorNum para ser atribuido a variavel maiorNUM
		}
		
		senao//Se o numero do VETOR não é menor que o MAIOR NUMERO, entao obviamente o NUMERO DO VETOR É O MAIOR NUMERO 
		{
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