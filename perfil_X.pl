% TESTES - Pedro Henrique Moreaes

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

testa_tudo :-
    teste_perfil_matematica_programacao, nl,
    teste_perfil_design_criatividade, nl,
    teste_perfil_redes_infra.
