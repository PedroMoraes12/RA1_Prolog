% MOTOR DE INFERÊNCIA - Pedro Henrique Moraes

% Verifica se usuario tem uma caracteristica
tem_caracteristica(Caracteristica) :-
    pergunta(IdPergunta, _, Caracteristica),
    resposta(IdPergunta, s).

% Soma os pesos de uma lista
soma_lista_pesos([], 0).
soma_lista_pesos([Peso-_|T], Soma) :-
    soma_lista_pesos(T, SomaResto),
    Soma is Peso + SomaResto.

% Calcula pontuacao de uma trilha
calcula_pontuacao(Trilha, Pontuacao, PerguntasComPeso) :-
    % Pega todas as caracteristicas que o usuario tem para essa trilha
    findall(Peso-PerguntaTexto,
            (perfil(Trilha, Carac, Peso),
             tem_caracteristica(Carac),
             pergunta(_, PerguntaTexto, Carac)),
            Lista),
    soma_lista_pesos(Lista, Pontuacao),
    PerguntasComPeso = Lista.

% Calcula pontuacoes para todas as trilhas
calcula_todas_pontuacoes([], []).
calcula_todas_pontuacoes([Trilha|Resto], [Pontuacao-Trilha-Perguntas|Resultado]) :-
    calcula_pontuacao(Trilha, Pontuacao, Perguntas),
    calcula_todas_pontuacoes(Resto, Resultado).

% Mostra perguntas com seus pesos
mostra_perguntas_com_peso([]).
mostra_perguntas_com_peso([Peso-P|R]) :-
    write(' - '), write(P), write(' (Peso: '), write(Peso), write(')'), nl,
    mostra_perguntas_com_peso(R).

% Exibe resultados formatados
exibe_resultados([]).
exibe_resultados([Pontuacao-Trilha-Perguntas|Resto]) :-
    write('Trilha: '), write(Trilha),
    write(' - Pontuação: '), write(Pontuacao), nl,
    write('Contribuíram:'), nl,
    mostra_perguntas_com_peso(Perguntas),
    nl,
    exibe_resultados(Resto).

% Funcao principal que gera recomendacoes
recomenda(Resultados) :-
    findall(Trilha, trilha(Trilha, _), Trilhas),
    calcula_todas_pontuacoes(Trilhas, Resultados).
