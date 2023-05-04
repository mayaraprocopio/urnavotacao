programa
{
    funcao inicio()
    {
		inteiro candidato1 = 0, candidato2 = 0, candidato3 = 0
		inteiro numeroCandidato
		inteiro votoBranco = 0
		inteiro votoNulo = 0
		inteiro encerraVotacao
		inteiro percentualVotos
		real porcentagemCandidato1, porcentagemCandidato2, porcentagemCandidato3
		escreva ("Digite o numero do candidato: ")
		leia(numeroCandidato)

		enquanto( voto != 0){
		escolha(numeroCandidato) {
		
	
			caso 1:
				candidato1++
				escreva (" Candidato 1 recebeu um voto")
				pare
			caso 2:
				candidato2++
				escreva (" Candidato 2 recebeu um voto")
				pare
			caso 3:
				candidato3++
				escreva ("Candidato 3 recebeu um voto")
				pare
			caso 6:
				votoBranco++
				escreva(" Voto em branco")
				pare
			caso 9:
				votoNulo++
				escreva(" Voto Nulo")
				pare
			caso 0:
				escreva("Encerrar votação")
				
			caso contrario:
				escreva ("Nenhum candidato foi votado")
		
		}
    }	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 862; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */