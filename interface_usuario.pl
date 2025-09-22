%INTERFACE DE USUÁRIO - Alan Filipe

:- dynamic resposta/2.     % permite adicionar ou remover fatos do tipo resposta/2 na execução


% predicado principal para iniciar o sistema
iniciar :-
    write('SISTEMA ESPECIALISTA - RECOMENDADOR DE TRILHAS'), nl,
    write('Responda as perguntas abaixo com s (sim) ou n (nao).'), nl, nl,
    retractall(resposta(_, _)), 
    faz_perguntas,
    recomenda(Resultados),
    nl, write('RESULTADOS:'), nl,
    exibe_resultados(Resultados).

faz_perguntas :-
    pergunta(Id, Texto, _),
    format('~w ', [Texto]),
    read(Resp),
    (Resp == s ; Resp == n),      % só vai aceitar 's' ou 'n'    
    assertz(resposta(Id, Resp)),
    fail.                            
    faz_perguntas.                        
    
