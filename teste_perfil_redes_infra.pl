% PERFIL TESTE 3 - Pedro Henrique Moreaes
% Perfil focado em Redes e Infraestrutura

:- dynamic resposta/2.

teste_perfil_redes_infra :-
    write('=== PERFIL: Redes + Infraestrutura ==='), nl,
    retractall(resposta(_, _)),
    assertz(resposta(1, n)), % Matemática
    assertz(resposta(2, n)), % Programação
    assertz(resposta(3, s)), % Pensamento lógico
    assertz(resposta(4, n)), % Criatividade
    assertz(resposta(5, s)), % Análise de riscos
    assertz(resposta(6, s)), % Admin sistemas
    assertz(resposta(7, n)), % Lógica
    assertz(resposta(8, n)), % Design
    assertz(resposta(9, s)), % Redes
    recomenda(Resultados),
    exibe_resultados(Resultados).
