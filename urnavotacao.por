programa
{
	inclua biblioteca Matematica --> mat
    funcao inicio()
    {
		cadeia candidato1 = "João", candidato2 = "Maria", candidato3 = "Pedro"
		inteiro voto
		inteiro contagem_votoBranco = 0
		inteiro contagem_votoNulo = 0
		inteiro contagemJoao = 0
		inteiro contagemMaria = 0
		inteiro contagemPedro = 0
		inteiro encerraVotacao
		real porcentualVotos
		real soma = contagem_votoBranco + contagem_votoNulo + contagemJoao + contagemMaria + contagemPedro
		real porcentagemCandidato1=0.0, porcentagemCandidato2=0.0, porcentagemCandidato3=0.0, porcentagemNulo=0.0, porcentagemBranco=0.0
	
		
		escreva ("Digite o numero do candidato:  ")
		leia(voto)

		enquanto( voto != 0){
			escolha(voto) {
			
		
				caso 1:
					contagemJoao++
					soma++
					escreva (" Candidato 1", candidato1 , "recebeu um voto\n")
					pare
				caso 2:
					contagemMaria++
					soma++
					escreva (" Candidato 2 recebeu um voto\n")
					pare
				caso 3:
					contagemPedro++
					soma++
					escreva ("Candidato 3 recebeu um voto\n")
					pare
				caso 6:
					contagem_votoBranco++
					soma++
					escreva(" Voto em branco\n")
					pare
				caso 9:
					contagem_votoNulo++
					soma++
					escreva(" Voto Nulo\n")
					pare
				caso 0:
					escreva("Encerrar votação")
					
				caso contrario:
					escreva ("Nenhum candidato foi votado")
					pare
		
		}
		escreva("Digite o numero do candidato:  ")
    		leia(voto)

    	}
    	escreva(" Encerrada as Eleições! Aguarde contagem dos votos.")
    
	
        	
	porcentagemCandidato1 = (contagemJoao/soma) * 100
	porcentagemCandidato2 = (contagemMaria/soma) * 100
	porcentagemCandidato3 = (contagemPedro/soma) * 100
	porcentagemNulo = (contagem_votoNulo/soma) * 100
	porcentagemBranco = (contagem_votoBranco/soma) * 100

	se(contagemJoao > contagemMaria e contagemJoao > contagemPedro){
		escreva("O candidato ",candidato1, 
	
		
	}


    }
	
	

	
		
    
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1864; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */