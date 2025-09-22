% PERFIL TESTE 1 - Pedro Henrique Moreaes
% Perfil focado em Matemática e Programação

:- dynamic resposta/2.

teste_perfil_matematica_programacao :-
    write('=== PERFIL: Matemática + Programação ==='), nl,
    retractall(resposta(_, _)),
    assertz(resposta(1, s)), % Matemática
    assertz(resposta(2, s)), % Programação
    assertz(resposta(3, s)), % Pensamento lógico
    assertz(resposta(4, n)), % Criatividade
    assertz(resposta(5, n)), % Análise de riscos
    assertz(resposta(6, n)), % Admin sistemas
    assertz(resposta(7, n)), % Lógica
    assertz(resposta(8, n)), % Design
    assertz(resposta(9, n)), % Redes
    recomenda(Resultados),
    exibe_resultados(Resultados).
