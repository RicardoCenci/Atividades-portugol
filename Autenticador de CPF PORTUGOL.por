programa
{
	//Para verificar a veracidade de um CPF é necessario de um calculo
	//Exemplo:
	//CPF: 523.753.023.48
	//	(5*10 + 2*9 + 3*8 + 7*7 + 5*6 + 3*5 + 0*4 + 2*3 + 3*2)*10 ||| O resto de divisao por 11 desse calculo deve retornar o numero na posição 10 do cpf, nesse caso o 4 (NUMEROS FICTCIOS)
	//Essa é a primeira checagem
	//para chegar o segundo numero é feita a mesma coisa, so que agora incluindo o numero 4 na conta e começando a multiplicação do 11
	//	(5*11 + 2*10 + 3*9 + 7*8 + 5*7 + 3*6 + 0*5 + 2*4 + 3*3 + 4*2)*10 ||| O resto de divisão disso por 11 deve retornar o valor da posição 11 do cpf, no exemplo o 8
	//Por limitações do PORTUGOL, cada digito deve ser digitado separadamente
	funcao inicio()
	{
		inteiro CPF[11]
		
		para
			(inteiro POSICAO=0 ; POSICAO < 11 ; POSICAO++)
				{
				leia(CPF[POSICAO])//LE O NUMERO DO CPF NA POSIÇÃO
				}
		
		se//FUNÇÃO verificaCPF RETORNA UM VALOR LOGICO
		(verificaCPF(CPF))//PASSA O CPF PARA A FUNÇÃO QUE VAI VERIFICAR ELE E RETORNAR VERDADEIRO SE FOR VALIDO E FALSO SE NÃO FOR
		{
		escreva("CPF Valido")
		}
			senao
			{
			escreva("CPF Invalido")
			}
	}
	
	funcao logico verificaCPF(inteiro CPF[])
	{
		inteiro 	VEZES=0,
				RESTO=0,
				TEMPORARIO=0
		
		
		para
		(inteiro NUMteste=10 ; VEZES < 9 ; NUMteste--)//NUM-- == NUM=NUM-1
		{//MULTIPLICA E SOMA AS 9 PRIMEIRAS POSIÇÕES
			RESTO=RESTO+CPF[VEZES]*NUMteste
			VEZES++//VEZES++ == VEZES=VEZES+1
		}

		
		RESTO=RESTO*10//Multiplica td isso por 10

		
		se//Caso o calculo der 10, ele precisa transformar o 10 em 0 para testar 
		(RESTO%11==10)//Se o resto de divisão for 10
			{
				TEMPORARIO=CPF[9]//guarda o numero da posição 9
				CPF[9]=10//Define a posição 9 como 10
			}

		
		se//Primeiro teste se é valido
		(RESTO%11!=CPF[9])//Testa se o resto de divisão por 11 é igual a posição 9, se for igual, prossegue com o algoritimo, se não retorna falso
			{
				retorne falso
			}

			
		VEZES=0//reseta o VEZES pro proximo teste

		
		se//Retorna a posição 9 ao valor original
		(RESTO%11==10)
			{
			CPF[9]=TEMPORARIO
			}

			
		RESTO=0//Reseta o valor do RESTO para o proximo teste

		
		para//Testa, agora com 11 numeros incluindo o 10
		(inteiro NUMteste=11 ; VEZES < 10 ; NUMteste--)
			{
				RESTO=RESTO+CPF[VEZES]*NUMteste
				VEZES++
			}

			
		RESTO=RESTO*10//Multiplica tudo por 10

		
		//Caso o cpf seja um so numero, exemplo (111.111.111/11),no calculo é um CPF valido, mas ele não é
		se//Retorna FALSO se os primeiros digitos forem iguais
		(CPF[1]==CPF[2] e CPF[2]==CPF[3] e CPF[3]==CPF[4])
		{
			retorne falso
		}

		
		se//Testa se o valor do resto de divisão por 11 é o valor do vetor na posição 10
		(RESTO%11!=CPF[10])
		{
			retorne falso
		}senao{
			retorne verdadeiro
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
