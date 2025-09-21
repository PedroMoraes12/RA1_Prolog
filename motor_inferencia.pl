% MOTOR DE INFERÊNCIA - Pedro Henrique Moreaes

calcula_pontuacao(Trilha, Pontuacao) :-
    findall(Peso, (perfil(Trilha, Caracteristica, Peso), tem_caracteristica(Caracteristica)), Pesos),
    soma_lista(Pesos, Pontuacao).
