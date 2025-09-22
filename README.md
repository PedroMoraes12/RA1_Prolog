# Sistema Especialista para Recomendação de Trilha Acadêmica

## Instituição 
- Nome da Instituição: PUCPR - Pontifícia Universidade Católica do Paraná.
- Disciplina: Programação Lógica e Funcional.
- Professor: Frank Coelho de Alcantara.

## Alunos do Grupo em Ordem Alfabética
- Aluno 1: Alan Filipe Reginato de França Santos - GitHub: lipeerz.
- Aluno 2: Lucas Ferraz dos Santos - GitHub: lucasferraz122.
- Aluno 3: Pedro Henrique Moraes - GitHub: PedroMoraes12.

## Objetivo do Trabalho

Este trabalho desenvolve um sistema especialista em Prolog que ajuda estudantes de tecnologia a escolher uma trilha de especialização com base em suas aptidões e interesses.

## Estrutura do Projeto
- `base_conhecimento.pl` → Contém trilhas, características de perfil e perguntas.
- `motor_inferencia.pl` → regras para calcular compatibilidade.
- `interface_usuario.pl` → fluxo principal e interação com usuário.
- `perfil_X.pl` → arquivo de teste com respostas simuladas de alunos.

## Como Executar

1. Abrir SWISH: [https://swish.swi-prolog.org/](https://swish.swi-prolog.org/)
2. Criar um novo Program no site do swish.
3. Copiar o conteúdo dos arquivos de `base_conhecimento.pl`, `motor_inferencia.pl`, `interface_usuario.pl` e `perfil_X.pl` e cola-los respectivamente na parte esquerda da página.
4. Escrever `iniciar.` na parte inferior direita da página e clicar em `run`.
5. Responder as perguntas com `s` para Sim e `n` para Não.
