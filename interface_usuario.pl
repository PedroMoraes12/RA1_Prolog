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
