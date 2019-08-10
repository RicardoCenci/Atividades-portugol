programa
{
	funcao inicio()
	{
	//Algorimo que recebe um numero e diz qual é o numero correspondente na Sequencia de Fibronacci
	//Fibonacci é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual, cada termo subsequente corresponde à soma dos dois anteriores.
	inteiro NUMERO, CONTADOR=1, n1=1 , n2=1 , n3=1
	
		escreva
			("Escreva o numero da Sequencia de Fibonacci que você deseja \n")//NOTE QUE: "\n" SERVE PARA QUEBRA DE LINHA
			
		leia//Le o numero desejado da Sequencia de Fibonacci
			(NUMERO)
			
		enquanto//Enquanto a variavel NUMERO for maior que a variavel CONTADOR o algorimo ira executar o bloco abaixo 
			(CONTADOR < NUMERO-1)
				{
					n3=n2+n1//N3 Ira receber a soma de N1 E N2, que inicialmente é igual a 2
					n2=n1//N2 ira receber o valor de N1, que incialmente é 1
					n1=n3//N1 ira receber o valor de N3, que inicialmente é a soma de N2 e N1
						
					CONTADOR++//Aumenta um na variavel contadora (CONTADOR++ == CONTADOR=CONTADOR+1)
				}
			
		escreva//Escreve o numero de N1
			("O numero correspondente a posição ", NUMERO, " na Sequencia de Fibonacci é ", n1, "\n Obrigado, Volte sempre")
	}//Acredito que é necessario testar com uma folha de caderno o valor das variaveis em cada laço de repetição do ENQUANTO para entender a logica do algoritimo.
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1107; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
