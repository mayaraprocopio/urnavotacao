programa
{
	inclua biblioteca Matematica --> mat
    funcao inicio()
    {
		cadeia candidato1  , candidato2  , candidato3 
		inteiro voto
		inteiro contagem_votoBranco = 0
		inteiro contagem_votoNulo = 0
		inteiro contagemJoao = 0
		inteiro contagemMaria = 0
		inteiro contagemPedro = 0
		inteiro encerraVotacao
		real porcentualVotos
		real soma = (contagem_votoBranco + contagem_votoNulo + contagemJoao + contagemMaria + contagemPedro)*1.0
		real porcentagemCandidato1=0.0, porcentagemCandidato2=0.0, porcentagemCandidato3=0.0, porcentagemNulo=0.0, porcentagemBranco=0.0
		logico encerrarVotacao = falso
		caracter confirmaEncerramento = 'N'

		escreva( "**CONFIGURAÇÃO DA URNA ELETRÔNICA\n\n")

		escreva("Digite o nome do candidato 1: ")
		leia(candidato1)

		escreva("Digite o nome do candidato 2: ")
		leia(candidato2)

		escreva("Digite o nome do candidato 3: ")
		leia(candidato3)

		escreva("\t\t\tELEIÇÕES 2023\n\n")
		escreva("Candidato ", candidato1, " Nº 1 \nCandidato ", candidato2, " Nº 2\nCandidato ", candidato3, " Nº 3\nNulo:9\nBranco:6\nEncerrar as Eleições:0\n")
	
		
		escreva ("Digite o numero do candidato:  ")
		leia(voto)

		faca enquanto( nao encerrarVotacao){
			escolha(voto) {
			
		
				caso 1:
					contagemJoao++
					soma++
					escreva (candidato1 , " recebeu um voto\n")
					pare
				caso 2:
					contagemMaria++
					soma++
					escreva (candidato2 ," recebeu um voto\n")
					pare
				caso 3:
					contagemPedro++
					soma++
					escreva (candidato3 , " recebeu um voto\n")
					pare
				caso 6:
					contagem_votoBranco++
					soma++
					escreva(" Voto em Branco\n")
					pare
				caso 9:
					contagem_votoNulo++
					soma++
					escreva(" Voto Nulo\n")
					pare
				caso 123456:
				
					escreva("Deseja realmente encerrar a votação?")
					escreva(" Digite S para 'sim' ou N para 'não': ")
					leia(confirmaEncerramento)

					se(confirmaEncerramento == 'S' ou confirmaEncerramento == 's'){
						encerrarVotacao = verdadeiro
						}
						pare
					
				caso contrario:
					escreva ("Nenhum candidato foi votado \n")
					pare
		
		}
		escreva("Digite o numero do candidato:  ")
    		leia(voto)
    		

    	}
    		
    	escreva(" Encerrada as Eleições! Aguarde contagem dos votos.\n\n")


    	  	
	porcentagemCandidato1 = (contagemJoao/soma) * 100
	porcentagemCandidato2 = (contagemMaria/soma) * 100
	porcentagemCandidato3 = (contagemPedro/soma) * 100
	porcentagemNulo = (contagem_votoNulo/soma) * 100
	porcentagemBranco = (contagem_votoBranco/soma) * 100

	escreva( " O candidato " ,candidato1 , " recebeu " , contagemJoao, " votos, que representam ", mat.arredondar(porcentagemCandidato1, 2), " % de votos.\n")
    	escreva( " O candidato " ,candidato2 , " recebeu " , contagemMaria, " votos, que representam ", mat.arredondar(porcentagemCandidato2, 2), " % de votos.\n")
    	escreva( " O candidato " ,candidato3 , " recebeu " , contagemPedro, " votos, que representam ", mat.arredondar(porcentagemCandidato3, 2), " % de votos.\n")
    	escreva( " Houve um total de  " ,contagem_votoNulo , " votos nulos, que representam ", mat.arredondar(porcentagemNulo, 2), " % de votos.\n")
    	escreva( " Houve um total de  " ,contagem_votoBranco , " votos branco, que representam ", mat.arredondar(porcentagemBranco, 2), " % de votos.\n\n")

	

	se(contagemJoao > contagemMaria e contagemJoao > contagemPedro){
		escreva("O candidato ",candidato1, " ganhou as eleições!\n")
	}
	senao se(contagemMaria > contagemJoao e contagemMaria > contagemPedro){
		escreva(" A candidata ",candidato2, " ganhou as eleições!\n")
	}
	senao se (contagemPedro > contagemJoao e contagemPedro > contagemMaria){
		escreva ("O candidato ", candidato3, " ganhou as eleições!\n")
	}
	senao{
		escreva("EMPATE\n")
	}

    }
	

    
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */