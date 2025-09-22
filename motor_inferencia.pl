% MOTOR DE INFERÊNCIA - Pedro Henrique Moraes

tem_caracteristica(Caracteristica) :-
    pergunta(IdPergunta, _, Caracteristica),
    resposta(IdPergunta, s).

soma_lista_pesos([], 0).
soma_lista_pesos([Peso-_|T], Soma) :-
    soma_lista_pesos(T, SomaResto),
    Soma is Peso + SomaResto.

calcula_pontuacao(Trilha, Pontuacao, PerguntasComPeso) :-
    findall(Peso-PerguntaTexto,
            (perfil(Trilha, Carac, Peso),
             tem_caracteristica(Carac),
             pergunta(_, PerguntaTexto, Carac)),
            Lista),
    soma_lista_pesos(Lista, Pontuacao),
    PerguntasComPeso = Lista.

calcula_todas_pontuacoes([], []).
calcula_todas_pontuacoes([Trilha|Resto], [Pontuacao-Trilha-Perguntas|Resultado]) :-
    calcula_pontuacao(Trilha, Pontuacao, Perguntas),
    calcula_todas_pontuacoes(Resto, Resultado).

mostra_perguntas_com_peso([]).
mostra_perguntas_com_peso([Peso-P|R]) :-
    write(' - '), write(P), write(' (Peso: '), write(Peso), write(')'), nl,
    mostra_perguntas_com_peso(R).

exibe_resultados([]).
exibe_resultados([Pontuacao-Trilha-Perguntas|Resto]) :-
    write('Trilha: '), write(Trilha),
    write(' - Pontuação: '), write(Pontuacao), nl,
    write('Contribuíram:'), nl,
    mostra_perguntas_com_peso(Perguntas),
    nl,
    exibe_resultados(Resto).

recomenda(Resultados) :-
    findall(Trilha, trilha(Trilha, _), Trilhas),
    calcula_todas_pontuacoes(Trilhas, Resultados).
