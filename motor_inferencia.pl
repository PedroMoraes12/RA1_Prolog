% MOTOR DE INFERÊNCIA - Pedro Henrique Moraes

tem_caracteristica(Caracteristica) :-
    pergunta(IdPergunta, _, Caracteristica),
    resposta(IdPergunta, s).

soma_lista([], 0).
soma_lista([H|T], Soma) :-
    soma_lista(T, SomaResto),
    Soma is H + SomaResto.

calcula_pontuacao(Trilha, Pontuacao) :-
    findall(Peso, (perfil(Trilha, Caracteristica, Peso), tem_caracteristica(Caracteristica)), Pesos),
    soma_lista(Pesos, Pontuacao).

calcula_todas_pontuacoes([], []).
calcula_todas_pontuacoes([Trilha|Resto], [Pontuacao-Trilha|Resultado]) :-
    calcula_pontuacao(Trilha, Pontuacao),
    calcula_todas_pontuacoes(Resto, Resultado).

inverter_pares([], []).
inverter_pares([Pontuacao-Trilha|Resto], [Trilha-Pontuacao|Invertido]) :-
    inverter_pares(Resto, Invertido).

ordena_resultados(Resultados, Ordenados) :-
    inverter_pares(Resultados, Invertidos),
    keysort(Invertidos, OrdenadosInvertidos),
    inverter_pares(OrdenadosInvertidos, Ordenados).

recomenda(ResultadosOrdenados) :-
    findall(Trilha, trilha(Trilha, _), Trilhas),
    calcula_todas_pontuacoes(Trilhas, Resultados),
    ordena_resultados(Resultados, ResultadosOrdenados).

exibe_resultados([]).
exibe_resultados([Pontuacao-Trilha|Resto]) :-
    write('Trilha: '), write(Trilha),
    write(' - Pontuação: '), write(Pontuacao), nl,
    exibe_resultados(Resto).
