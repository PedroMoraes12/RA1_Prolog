%INTERFACE DE USUÁRIO - Alan Filipe

:- dynamic resposta/2

iniciar :-
    write('SISTEMA ESPECIALISTA - RECOMENDADOR DE TRILHAS'), nl,
    write('Responda as perguntas abaixo com s (sim) ou n (nao).'), nl, nl,
    retractall(resposta(_, _)), % limpa respostas anteriores
    faz_perguntas,
    recomenda(Resultados),
    nl, write('===== RESULTADOS ====='), nl,
    exibe_resultados(Resultados).

faz_perguntas :-
    pergunta(Id, Texto, _),
    format('~w ', [Texto]),
    read(Resp),
    (Resp == s ; Resp == n),      % só vai aceitar 's' ou 'n'    
    assertz(resposta(Id, Resp)),
    fail.                            % força voltar e perguntar a próxima
    faz_perguntas.                        % encerra quando não houver mais
    
