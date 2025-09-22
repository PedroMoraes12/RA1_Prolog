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
**Modo interativo.**
   
  1. Abrir SWISH: [https://swish.swi-prolog.org/](https://swish.swi-prolog.org/)
  2. Criar um novo Program no site do Swish.
  3. Copiar o conteúdo dos arquivos de `base_conhecimento.pl`, `motor_inferencia.pl` e `interface_usuario.pl` e cola-los respectivamente na parte esquerda da página.
  4. Escrever `iniciar.` na parte inferior direita da página e clicar em `run`.
  5. Responder as perguntas com `s` para Sim e `n` para Não.
  6. Ao final das perguntas o sistema exibirá o ranking das trilhas recomendadas com base na sua resposta e seus pontos em cada uma.
     
**Testes Automáticos de perfis.**
   
O arquivo `perfil_X.pl` permite testes de perfis automáticos sem a necessidade de responder manualmente.
**Perfis disponíveis:**
   - `teste_perfil_matematica_programacao/0` → Perfil focado em Matemática e Programação
   - `teste_perfil_design_criatividade/0` → Perfil focado em Design e Criatividade
   - `teste_perfil_redes_infra/0` → Perfil focado em Redes e Infraestrutura

1. Copie o conteúdo de `perfil_X.pl` tambem para o Swish.
2. Caso queira testar um perfil em específico, digite no terminal o seguinte exemplo:
   ```prolog
   teste_perfil_matematica_programacao.
3. E para testar todos os perfis de uma única vez utilize o seguinte comando no terminal:
   ```prolog
   testa_tudo.
4. Após isso clique em `run`.
5. O sistema ira mostrar o ranking de trilhas sugeridas e a pontuação de cada uma.
