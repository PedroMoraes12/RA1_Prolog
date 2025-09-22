%base de conhecimento feito por: Lucas Ferraz

trilha(ciencia_de_dados, 'Analise de dados e estatistica aplicada.').
trilha(inteligencia_artificial, 'Aprendizado de maquinas e raciocinio automatizado.').
trilha(desenvolvimento_web,'Construcao de websites e aplicacoes web.').
trilha(seguranca_da_informacao, 'Protecao de dados e seguranca de sistemas.').
trilha(redes_e_infraestrutura, 'Administracao de redes e servidores.').

perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, programacao, 4).
perfil(ciencia_de_dados, pensamento_logico, 3).
perfil(inteligencia_artificial, programacao, 5).
perfil(inteligencia_artificial, logica, 4).
perfil(inteligencia_artificial, criatividade, 3).
perfil(desenvolvimento_web, design_virtual, 5).
perfil(desenvolvimento_web, programacao, 3).
perfil(desenvolvimento_web, criatividade, 4).
perfil(seguranca_da_informacao, analise_de_riscos, 5).
perfil(seguranca_da_informacao, pensamento_logico, 4).
perfil(seguranca_da_informacao, conhecimento_de_redes, 3).
perfil(redes_e_infraestrutura, administracao_de_sistemas, 5).
perfil(redes_e_infraestrutura, conhecimento_de_redes, 4).
perfil(redes_e_infraestrutura, pensamento_logico, 3).

pergunta(1, 'É bom com matemática e/ou estatística?', matematica_estatistica).
pergunta(2, 'Gosta de programar em alguma linguagem?', programacao).
pergunta(3, 'Tem facilidade em organizar informações?', pensamento_logico).
pergunta(4, 'gosta de criar soluções ou ideias novas e diferentes das outras pessoas?', criatividade).
pergunta(5, 'Gosta de aprender a como proteger sistemas e dados?', analise_de_riscos).
pergunta(6, 'É bom com administração e com sistemas e servidores?', administracao_de_sistemas).
pergunta(7, 'Tem facilidade em encontrar padrões?', logica).
pergunta(8, 'Tem um bom conhecimento estético e conhecimento na psicologia das cores?', design_virtual).
pergunta(9, 'tem conhecimento de protocolos como tcp/ip?', conhecimento_de_redes).
