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

calcula_todas_pontuacoes([], []).
calcula_todas_pontuacoes([Trilha|Resto], [Pontuacao-Trilha|Resultados]) :-
    calcula_pontuacao(Trilha, Pontuacao),
    calcula_todas_pontuacoes(Resto, Resultados).

ordena_resultados(Resultados, Ordenados) :-
    predsort(compara_pontuacao, Resultados, Ordenados).

compara_pontuacao(>, A-_, B-_) :- A > B.
compara_pontuacao(<, A-_, B-_) :- A < B.
compara_pontuacao(=, _, _).

exibe_resultados([]).
exibe_resultados([Pontuacao-Trilha|Resto]) :-
    write('Trilha: '), write(Trilha),
    write(' - Pontuação: '), write(Pontuacao), nl,
    exibe_resultados(Resto).
