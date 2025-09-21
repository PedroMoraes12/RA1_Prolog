% TESTES - Pedro Henrique Moraes

:- dynamic resposta/2.

teste_perfil_matematica_programacao :-
    write('=== PERFIL: Matemática + Programação ==='), nl,
    retractall(resposta(_, _)),
    assertz(resposta(1, s)), % Matemática
    assertz(resposta(2, s)), % Programação
    assertz(resposta(3, s)), % Pensamento lógico
    assertz(resposta(4, n)), % Lógica
    assertz(resposta(5, n)), % Criatividade
    assertz(resposta(6, n)), % Design - não
    assertz(resposta(7, n)), % Análise de riscos
    assertz(resposta(8, n)), % Redes
    assertz(resposta(9, n)), % Admin sistemas
    recomenda(Resultados),
    exibe_resultados(Resultados).
