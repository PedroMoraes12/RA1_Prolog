% MOTOR DE INFERÊNCIA - Pedro Henrique Moreaes

calcula_pontuacao(Trilha, Pontuacao) :-
    findall(Peso, (perfil(Trilha, Caracteristica, Peso), tem_caracteristica(Caracteristica)), Pesos),
    soma_lista(Pesos, Pontuacao).

tem_caracteristica(Caracteristica) :-
    pergunta(IdPergunta, _, Caracteristica),
    resposta(IdPergunta, s).

soma_lista([], 0).
soma_lista([H|T], Soma) :-
    soma_lista(T, SomaResto),
    Soma is H + SomaResto.

recomenda(ResultadosOrdenados) :-
    findall(Trilha, trilha(Trilha, _), Trilhas),
    calcula_todas_pontuacoes(Trilhas, Resultados),
    ordena_resultados(Resultados, ResultadosOrdenados).
