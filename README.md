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
- `testa_tudo.pl` → arquivo que testa os 3 perfis juntos.
- `teste_perfil_design_criatividade.pl` → respostas simuladas para um perfil focado em  design e criatividade.
- `teste_perfil_matematica_programacao.pl` → respostas simuladas para um perfil focado em matemática e programação.
- `teste_perfil_redes_infra.pl` → respostas simuladas para um perfil focado em redes e infraestrutura.

## Como Executar
## **Modo interativo.**
   
  1. Abrir SWISH: [https://swish.swi-prolog.org/](https://swish.swi-prolog.org/)
  2. Criar um novo Program no site do Swish.
  3. Copiar o conteúdo dos arquivos de `base_conhecimento.pl`, `motor_inferencia.pl` e `interface_usuario.pl` e cola-los respectivamente na parte esquerda da página.
  4. Escrever `iniciar.` na parte inferior direita da página e clicar em `run`.
  5. Responder as perguntas com `s` para Sim e `n` para Não.
  6. Ao final das perguntas o sistema exibirá o ranking das trilhas recomendadas com base na sua resposta e seus pontos em cada uma.
     
## **Testes Automáticos de perfis.**
   
O sistema possui 3 arquivos de teste separados, cada um representando um perfil diferente de aluno.
E 1 arquivo que testa todos juntos.
Permitindo testes de perfis automáticos sem a necessidade de responder manualmente.
**Perfis disponíveis:**
   - `perfil_1.pl/0` → Perfil focado em Matemática e Programação
   - `perfil_2.pl/0` → Perfil focado em Design e Criatividade
   - `perfil_3.pl/0` → Perfil focado em Redes e Infraestrutura  

1. Copie o conteúdo de `perfil_1.pl/0` tambem para o Swish.
2. Copie o conteúdo de `perfil_2.pl/0` tambem para o Swish
3. Copie o conteúdo de `perfil_3.pl/0` tambem para o Swish
4. Copie o conteúdo de `testa_tudo.pl` tambem para o Swish
   
5. Caso queira testar um perfil em específico, digite no terminal o seguinte exemplo:
   ```prolog
   teste_perfil_matematica_programacao.
4. E para testar todos os perfis de uma única vez utilize o seguinte comando no terminal:
   ```prolog
   testa_tudo.
5. Após isso clique em `run`.
6. O sistema ira mostrar o ranking de trilhas sugeridas e a pontuação de cada uma.
