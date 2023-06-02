function UrnaEletronica() {

    let
		candidato1 = " " ,
		candidato2 = " " ,
		candidato3 = " " ,
		voto
		contagemC1 = 0,
		contagemC2 = 0,
		contagemC3 = 0,
		contagem_branco = 0,
		contagem_nulo = 0,
        soma = contagemC1 + contagemC2 + contagemC3 + contagem_branco + contagem_nulo
		encerraVotacao = false ,
		confirmaEncerramento = 'N',
		escolher = 'S'
				
		
		
		while(escolher != 'N' & escolher != 'n'){
			console.log("\t\t\t\t\t\t\tConfiguração da urna eletrônica \n\n")	
			console.log (">>Digite o nome do candidato 1\n ")
			prompt(candidato1)
			console.log(">>Digite o nome do candidato 2 \n")
			prompt(candidato2)
			console.log(">>Digite o nome do candidato 3 \n")
			prompt(candidato3)
			/* Mensagem de introdução e mensagem de instrução */
			console.limpa()
			console.log("Você deseja alterar o nome do candidato? S/N  ")
			prompt(escolher)
			console.limpa()
		}
		
		console.log("\n\t\t\t\t\t\t\t\t * ELEIÇOES 2023 *")
		console.log("\n", candidato1  ," Nº : 1\n",candidato2," Nº : 2\n",candidato3," Nº : 3\nNULO Nº : 8\nBRANCO Nº : 5\n")
		console.log("\nDigite o número do seu candidato: ")
		
		prompt(voto) /* ler o voto do usuário e armazenar na memória */
		
		/* Executar os passos seguintes até que alguém vote 0 para encerrar a eleição */
		while(encerraVotacao){
			/* Associar o voto do usuário a cada candidato e incrementar a contagem de votos do candidato votado */
			switch(voto){
				
                            
                
				case 1:
				contagemC1++
				console.log("Você votou no candidato " , candidato1 , "\n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				break;
				
				case 2:
				contagemC2++
				console.log("Você votou no candidato " , candidato2 , "\n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				break;
				
				case 3:
				contagemC3++
				console.log("Você votou no candidato " , candidato3 , "\n") /* Mensagem de confirmação do voto */
				somConfirmacao()
				break;

                case 5:
				contagem_branco++
				console.log("Você votou BRANCO \n" ) /* Mensagem de confirmação do voto */
				somConfirmacao()
				break;
		
				case 8:
				contagem_nulo++
				console.log("Você votou NULO \n") /* Mensagem de confirmação do voto */
				somConfirmacao()
			    break;

                case 123456:
                    console.log("Deseja realmente encerrar a votação?")
                    console.log(" Digite S para 'sim' ou N para 'não': ")
					prompt(confirmaEncerramento)

					if(confirmaEncerramento == 'S', ou ,confirmaEncerramento == 's'){
						encerrarVotacao = true
						}
						break;
                

				default:
				console.log("	\n*VOTO INVÁLIDO*, vote novamente ") /* Mensagem de erro */
				break;

                
			}
			
			if(confirmaEncerramento == 'N' & confirmaEncerramento == 'n' ){
				console.log(" \nVote no seu candidato: ") /* Mensagem de instrução */
				prompt(voto) /* Ler o voto do usuário */
			}
			
		}
	
		console.log("\t\t\t#A ELEIÇÃO FOI ENCERRADA#.\n\n\n")
		
		
	
		/* Declarando e definindo as variáveis e somando o voto de todos os candidatos. Calculando porcentagem dos votos de cada candidato */
		
		porcentagemC1 = (contagemC1/soma) * 100
		porcentagemC2 = (contagemC2/soma) * 100
		porcentagemC3= (contagemC3/soma) * 100
		porcentagem_branco = (contagem_branco/soma) * 100
		porcentagem_nulo = (contagem_nulo/soma) * 100

		console.log("O candidato(a) ", candidato1," recebeu ", contagemC1 , " votos, que representam ", mat.arredondar(porcentagemC1 , 2), "% do total de votos.\n")
		console.log("O candidato(a) ", candidato2," recebeu ", contagemC2 , " votos, que representam ", mat.arredondar(porcentagemC2 , 2), "% do total de votos.\n")
		console.log("O candidato(a) ", candidato3," recebeu ", contagemC3 , " votos, que representam ", mat.arredondar(porcentagemC3 , 2), "% do total de votos.\n")
		console.log("\nHouve um total de ", contagem_nulo , " votos NULOS, que representam ", mat.arredondar(porcentagem_nulo , 2), "% do total de votos.\n")
		console.log("Houve um total de ", contagem_branco , " votos BRANCOS, que representam ", mat.arredondar(porcentagem_branco , 2), "% do total de votos.\n\n")
		
		/* Comparando a quantidade de votos dos candidatos para determinar o resultado final e exibí-lo ao usuário */
		if(contagemC1 > contagemC2 && contagemC1 > contagemC3){
			console.log(" >>>Candidato " ,candidato1 ," VENCEU A ELEIÇÃO<<<< " , contagemC1 + contagem_branco, " votos, que representam ", mat.arredondar(porcentagemC1 + porcentagem_branco , 2), "% do total de votos.\n")
		}
		else if(contagemC2 > contagemC3 && contagemC2 > contagemC1){	
			console.log(" >>>Candidato " ,candidato2, " VENCEU A ELEIÇÃO <<<< " , contagemC2 + contagem_branco, " votos, que representam ", mat.arredondar( porcentagemC2 + porcentagem_branco ,2 ), "% do total de votos.\n") 
			
		}
		else if(contagemC3 > contagemC1 && contagemC3 > contagemC2){
			console.log(">>>Candidato " ,candidato3, " VENCEU A ELEIÇÃO <<<<1", contagemC3 + contagem_branco, " votos, que representam ", mat.arredondar( porcentagemC3 + porcentagem_branco , 2 ), "% do total de votos.\n")
		}
		else if(contagemC1 == contagemC2 && contagemC2 == contagemC3){	
			console.log("Empate entre TODOS os candidatos -------2º Turno\n\n")
		}
		else if(contagemC2 == contagemC3 && contagemC1 < contagemC2){
			console.log("\nEMPATE entre os candidatos", candidato2, "e", candidato3, " ------> 2ºTurno\n\n")
			
		}
		else if(contagemC1 == contagemC3 && contagemC2 < contagemC3){
			console.log("EMPATE entre os candidatos",candidato1, "e", candidato3, " ---------> 2ºTurno")
		}
		else if(contagemC1 == contagemC2 && contagemC3 < contagemC2){
			
			console.log("EMPATE entre as candidadto", candidato1, "e", candidato2, "---------> 2ºTurno\n\n")
		}

		
	function somConfirmacao() {
        const audio = new Audio("./desafio-urna-eletronica_audio_confirma-urna.mp3")
        audio.play();

    }


      		      	
        
}
		
	
