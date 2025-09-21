%INTERFACE DE USUÁRIO - Alan Filipe

:- dynamic resposta/2

Iniciar :-
write('=========================================='), nl,
    write('   SISTEMA ESPECIALISTA - RECOMENDADOR DE TRILHAS'), nl,
    write('=========================================='), nl,
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
    (Resp == s ; Resp == n),          
    assertz(resposta(Id, Resp)),
    
    
