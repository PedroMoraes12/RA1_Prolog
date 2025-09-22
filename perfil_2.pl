% PERFIL TESTE 2 - Pedro Henrique Moreaes
%Perfil focado em Design e Criatividade

:- dynamic resposta/2.

teste_perfil_design_criatividade :-
    write('=== PERFIL: Design + Criatividade ==='), nl,
    retractall(resposta(_, _)),
    assertz(resposta(1, n)), % Matemática
    assertz(resposta(2, s)), % Programação
    assertz(resposta(3, n)), % Pensamento lógico
    assertz(resposta(4, s)), % Criatividade
    assertz(resposta(5, n)), % Análise de riscos
    assertz(resposta(6, n)), % Admin sistemas
    assertz(resposta(7, n)), % Lógica
    assertz(resposta(8, s)), % Design
    assertz(resposta(9, n)), % Redes
    recomenda(Resultados),
    exibe_resultados(Resultados).
