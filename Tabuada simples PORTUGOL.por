programa
{
	funcao inicio()
	{	
		inteiro NumTabuada//Inicia uma variavel para colocar o numero da tabuada desejada
		
		escreva//Escreve um texto pro usuario
			("Voce deseja a tabuada do?\n")
			
		leia//Le o input do usuario e escreve ele na variavel NumTabuada
			(NumTabuada)
		
		tabuada//Passa essa variavel "NumTabuada" para a função Tabuada, cituada logo abaixo
			(NumTabuada)
	}
	
	funcao tabuada(inteiro MULTIPLICADOR)//Note que: A variavel que é passada no parametro da função (inteiro MULTIPLICADOR) não precisa ter o mesmo nome que a variavel que anteriormente foi passada pra ela
	{
		//O valor da variavel NumTabuada é repassado para a função e colocado na varivael declarada MULTIPLICADOR
		escreva//Escreve um texto para deixar intuitivo para o usuario
			("A Tabuada do " , MULTIPLICADOR , " é \n")
		
		para//Laço de repeticação para repetir a conta de vezes 10 vezes e escreve pro usuario
			(inteiro MULTIPLICANDO=0 ; MULTIPLICANDO<=10 ; MULTIPLICANDO++)//Declara a variavel MULTIPLICANDO como 0, testa se a variavel Y é igual ou maior que 10, depois de executar o bloco, adiciona 1 ao Y
			//A Variavel MULTIPLICADOR tem a função de contador e MULTIPLICANDO na operação abaixo
			//Note que MULTIPLICANDO++ faz a mesma coisa que MULTIPLICANDO=MULTIPLICANDO+1
			{
				
				escreva//Escreve pro usuario a operação das duas variaveis X e Y
					(MULTIPLICANDO ," x " , MULTIPLICADOR ," = " , MULTIPLICANDO*MULTIPLICADOR ,"\n")// "\n" tem a função de quebra de linha	
			}

			
		//Essa estrutura pode ser feita com um loop infinito ao redor de todo o codigo, e uma vez que o usuario der o input falso(Não deseja outra operação) o loop cessa
		escreva//Estrutura exemplo para realizar outra operação
			("Deseja realizar outra operação?\n")
			
		cadeia Resposta//Declara uma Variavel tipo CADEIA para armazenar a resposta
		leia//Le a resposta do usuario
			(Resposta)
			
		se//Testa se a resposta é SIM
		(Resposta=="s" ou Resposta=="S" ou Resposta=="sim" ou Resposta=="SIM")//Portugol é Case-sensitive, note o uso do OU para contornar isso
			{
			escreva//Da DUAS quebras de linha para separar o texto novo do velho, caso a resposta anterior for SIM
				("\n\n")
				
			inicio()//Chama a função incio, declarada no INICIO do documento, fazendo todo o algoritimo "resetar"
			//NOTE QUE: se houverem variaveis que devem ser guardadas mas o codigo precisa "resetar" essa não é a solução ideal
			}	
		escreva//Codigo simples para iniciantes na materia de ALGORITIMOS, espero que esteja entendivel, obrigado.
			("Obrigado, Volte sempre!")
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1494; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
