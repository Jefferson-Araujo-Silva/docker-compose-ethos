CREATE TABLE Pergunta (
  id UUID NOT NULL,
  titulo VARCHAR(200) NULL,
  alternativaA VARCHAR(100) NULL,
  alternativaB VARCHAR(100) NULL,
  alternativaC VARCHAR(100) NULL,
  alternativaD VARCHAR(100) NULL,
  alternativaE VARCHAR(100) NULL,
  area_esg VARCHAR(45) NULL,
  tema VARCHAR(100) NULL,
  PRIMARY KEY (id)
);

create table questionario(
  id UUID NOT NULL,
  porcentagem_ambiental INT NULL,
  porcentagem_social INT NULL,
  porcentagem_governanca INT NULL,
  fk_empresa UUID,
  PRIMARY KEY (id)
);

INSERT INTO Pergunta (id, titulo, alternativaA, alternativaB, alternativaC, alternativaD, alternativaE, area_esg, tema) VALUES
(1, 'Em relação à gestão de resíduos sólidos:', 'A empresa não possui políticas ou práticas documentadas para lidar com resíduos', 'A empresa tem políticas, mas raramente as implementa', 'A empresa implementa políticas de maneira consistente', 'A empresa tem um bom controle e recicla resíduos regularmente', 'A empresa possui um sistema eficiente de gestão de resíduos', 'ambiental', 'Gestão de Resíduos Sólidos'),
(2, 'Quanto ao uso de recursos naturais:', 'A empresa não monitora o uso de recursos naturais', 'A empresa faz monitoramento, mas não adota medidas para reduzir o consumo', 'A empresa adota medidas esporádicas para reduzir o consumo', 'A empresa possui políticas efetivas de redução de consumo de recursos naturais', 'A empresa é líder na conservação de recursos naturais', 'ambiental', 'Uso de Recursos Naturais'),
(3, 'Sobre emissões de gases de efeito estufa:', 'A empresa não rastreia emissões de gases de efeito estufa', 'A empresa rastreia, mas não estabelece metas de redução', 'A empresa estabelece metas de redução, mas não as alcança consistentemente', 'A empresa atinge suas metas de redução de emissões', 'A empresa é carbono neutro e tem estratégias para combater as emissões', 'ambiental', 'Emissões de Gases de Efeito Estufa'),
(4, 'Quanto ao uso de energias renováveis:', 'A empresa não utiliza energias renováveis', 'A empresa utiliza energias renováveis de forma limitada', 'A empresa investe em energias renováveis, mas não é uma parte significativa de sua matriz energética', 'A empresa usa energias renováveis como parte substancial de sua matriz energética', 'A empresa é 100% alimentada por energias renováveis', 'ambiental', 'Uso de Energias Renováveis'),
(5, 'Sobre a conservação da biodiversidade:', 'A empresa não tem iniciativas para proteger a biodiversidade', 'A empresa apoia iniciativas esporádicas para a conservação da biodiversidade', 'A empresa apoia ativamente projetos de conservação da biodiversidade', 'A empresa tem parcerias significativas com organizações de conservação da biodiversidade', 'A empresa lidera esforços significativos na preservação da biodiversidade', 'ambiental', 'Conservação da Biodiversidade'),
(6, 'Quanto à educação e conscientização ambiental dos funcionários:', 'A empresa não oferece treinamento ou conscientização ambiental', 'A empresa oferece treinamento, mas raramente promove conscientização', 'A empresa promove conscientização, mas de forma esporádica', 'A empresa promove conscientização regularmente entre os funcionários', 'A empresa tem programas de educação e conscientização ambiental robustos', 'ambiental', 'Educação e Conscientização Ambiental dos Funcionários'),
(7, 'Em relação à transparência e divulgação de informações ambientais:', 'A empresa não divulga informações sobre seu desempenho ambiental', 'A empresa divulga informações limitadas de forma irregular', 'A empresa divulga informações ambientais regularmente, mas de maneira superficial', 'A empresa divulga informações detalhadas sobre seu desempenho ambiental', 'A empresa é líder em transparência e divulgação de informações ambientais', 'ambiental', 'Transparência e Divulgação de Informações Ambientais'),
(8, 'Sobre a gestão de riscos ambientais:', 'A empresa não avalia ou gerencia riscos ambientais', 'A empresa realiza avaliações de risco, mas não implementa ações preventivas', 'A empresa implementa ações preventivas de forma esporádica', 'A empresa implementa ações preventivas e possui um plano de contingência sólido', 'A empresa é altamente resiliente a riscos ambientais', 'ambiental', 'Gestão de Riscos Ambientais'),
(9, 'Quanto ao envolvimento com a comunidade local em questões ambientais:', 'A empresa não se envolve em questões ambientais da comunidade', 'A empresa fornece assistência esporádica em projetos ambientais locais', 'A empresa é um parceiro ativo em projetos ambientais da comunidade', 'A empresa lidera esforços em projetos ambientais locais', 'A empresa é um pilar na promoção de questões ambientais na comunidade', 'ambiental', 'Envolvimento com a Comunidade Local em Questões Ambientais'),
(10, 'Sobre a inovação e pesquisa em tecnologias sustentáveis:', 'A empresa não investe em inovação sustentável ou pesquisa ambiental', 'A empresa investe esporadicamente em inovação sustentável', 'A empresa investe consistentemente em inovação sustentável', 'A empresa é um pioneiro em pesquisa e desenvolvimento de tecnologias sustentáveis', 'A empresa lidera a indústria em inovação e pesquisa sustentável', 'ambiental', 'Inovação e Pesquisa em Tecnologias Sustentáveis');

INSERT INTO Pergunta (id, titulo, alternativaA, alternativaB, alternativaC, alternativaD, alternativaE, area_esg, tema) VALUES
(11, 'Em relação à diversidade e inclusão no local de trabalho:', 'A empresa não tem políticas de diversidade e inclusão', 'A empresa tem políticas, mas não as promove ativamente', 'A empresa promove diversidade e inclusão, mas de forma esporádica', 'A empresa promove ativamente a diversidade e inclusão', 'A empresa é um líder em diversidade e inclusão', 'social', 'Diversidade e Inclusão no Local de Trabalho'),
(12, 'Sobre o tratamento dos funcionários e condições de trabalho:', 'A empresa não monitora as condições de trabalho', 'A empresa monitora, mas não faz melhorias significativas', 'A empresa faz melhorias esporádicas nas condições de trabalho', 'A empresa mantém boas condições de trabalho', 'A empresa oferece condições de trabalho excepcionais', 'social', 'Tratamento dos Funcionários e Condições de Trabalho'),
(13, 'Quanto ao desenvolvimento e treinamento dos funcionários:', 'A empresa não oferece oportunidades de desenvolvimento', 'A empresa oferece oportunidades, mas de forma limitada', 'A empresa oferece desenvolvimento de forma esporádica', 'A empresa oferece amplas oportunidades de desenvolvimento', 'A empresa investe significativamente no desenvolvimento dos funcionários', 'social', 'Desenvolvimento e Treinamento dos Funcionários'),
(14, 'Sobre a remuneração justa e benefícios:', 'A empresa não oferece remuneração justa nem benefícios adequados', 'A empresa oferece remuneração e benefícios insuficientes', 'A empresa oferece remuneração e benefícios adequados, mas não de forma consistente', 'A empresa oferece remuneração justa e benefícios consistentemente', 'A empresa é reconhecida por sua remuneração e benefícios excepcionais', 'social', 'Remuneração Justa e Benefícios'),
(15, 'Quanto à saúde e segurança dos funcionários:', 'A empresa não prioriza a saúde e segurança dos funcionários', 'A empresa aborda questões de saúde e segurança, mas não de forma proativa', 'A empresa adota medidas proativas para a saúde e segurança', 'A empresa mantém altos padrões de saúde e segurança no local de trabalho', 'A empresa é líder em saúde e segurança dos funcionários', 'social', 'Saúde e Segurança dos Funcionários'),
(16, 'Sobre o envolvimento com a comunidade local:', 'A empresa não está envolvida em atividades comunitárias', 'A empresa faz contribuições esporádicas para a comunidade', 'A empresa é ativa em projetos comunitários', 'A empresa tem parcerias significativas com organizações locais', 'A empresa é uma força motriz nas iniciativas comunitárias', 'social', 'Envolvimento com a Comunidade Local'),
(17, 'Em relação à ética nos negócios e responsabilidade social:', 'A empresa não promove ética nos negócios nem responsabilidade social', 'A empresa promove ética nos negócios de forma irregular', 'A empresa promove ética nos negócios regularmente', 'A empresa é reconhecida por sua ética e responsabilidade social', 'A empresa é líder em ética nos negócios e responsabilidade social', 'social', 'Ética nos Negócios e Responsabilidade Social'),
(18, 'Quanto à igualdade de oportunidades:', 'A empresa não promove igualdade de oportunidades', 'A empresa promove igualdade de oportunidades de forma limitada', 'A empresa promove igualdade de oportunidades de forma esporádica', 'A empresa promove igualdade de oportunidades consistentemente', 'A empresa é reconhecida por seu compromisso com a igualdade de oportunidades', 'social', 'Igualdade de Oportunidades'),
(19, 'Sobre a responsabilidade social corporativa:', 'A empresa não tem iniciativas de responsabilidade social', 'A empresa tem iniciativas de responsabilidade social, mas não as prioriza', 'A empresa prioriza a responsabilidade social, mas de forma esporádica', 'A empresa tem uma abordagem consistente em relação à responsabilidade social', 'A empresa é líder em responsabilidade social corporativa', 'social', 'Responsabilidade Social Corporativa'),
(20, 'Quanto à promoção de práticas comerciais justas:', 'A empresa não promove práticas comerciais justas', 'A empresa promove práticas justas de forma irregular', 'A empresa promove práticas comerciais justas regularmente', 'A empresa é reconhecida por suas práticas comerciais justas', 'A empresa é um modelo em práticas comerciais justas', 'social', 'Promoção de Práticas Comerciais Justas');

INSERT INTO Pergunta (id, titulo, alternativaA, alternativaB, alternativaC, alternativaD, alternativaE, area_esg, tema) VALUES
(21, 'Sobre a estrutura de governança da empresa:', 'A empresa não possui uma estrutura de governança formal', 'A empresa tem uma estrutura, mas não a aplica efetivamente', 'A empresa aplica sua estrutura de governança de forma esporádica', 'A empresa segue sua estrutura de governança de forma consistente', 'A empresa é um modelo em termos de estrutura de governança', 'governança', 'Estrutura de Governança da Empresa'),
(22, 'Em relação à independência do conselho de administração:', 'O conselho de administração não é independente', 'O conselho de administração possui alguma independência, mas não de forma substancial', 'O conselho de administração é parcialmente independente', 'O conselho de administração é principalmente independente', 'O conselho de administração é composto por membros altamente independentes', 'governança', 'Independência do Conselho de Administração'),
(23, 'Quanto à divulgação de informações financeiras e transparência:', 'A empresa não divulga informações financeiras nem é transparente', 'A empresa divulga informações financeiras de forma limitada', 'A empresa divulga informações financeiras regularmente, mas de forma superficial', 'A empresa divulga informações financeiras detalhadas', 'A empresa é líder em transparência financeira', 'governança', 'Divulgação de Informações Financeiras e Transparência'),
(24, 'Sobre a prestação de contas e auditoria:', 'A empresa não possui mecanismos eficazes de prestação de contas ou auditoria', 'A empresa possui mecanismos, mas não os utiliza efetivamente', 'A empresa utiliza mecanismos de prestação de contas e auditoria de forma esporádica', 'A empresa utiliza mecanismos de prestação de contas e auditoria de forma consistente', 'A empresa é exemplar em termos de prestação de contas e auditoria', 'governança', 'Prestação de Contas e Auditoria'),
(25, 'Quanto à remuneração dos executivos:', 'A remuneração dos executivos não é transparente nem alinhada com o desempenho', 'A remuneração dos executivos é parcialmente transparente e nem sempre alinhada com o desempenho', 'A remuneração dos executivos é transparente, mas nem sempre alinhada com o desempenho', 'A remuneração dos executivos é transparente e em grande parte alinhada com o desempenho', 'A remuneração dos executivos é altamente transparente e estritamente alinhada com o desempenho', 'governança', 'Remuneração dos Executivos'),
(26, 'Em relação à responsabilidade corporativa e ética:', 'A empresa não promove responsabilidade corporativa nem ética', 'A empresa promove responsabilidade corporativa e ética de forma irregular', 'A empresa promove responsabilidade corporativa e ética de forma consistente', 'A empresa é reconhecida por suas práticas éticas e responsáveis', 'A empresa é um modelo em termos de responsabilidade corporativa e ética', 'governança', 'Responsabilidade Corporativa e Ética'),
(27, 'Sobre o envolvimento acionário e direitos dos acionistas:', 'A empresa não promove o envolvimento acionário nem respeita os direitos dos acionistas', 'A empresa promove o envolvimento acionário de forma irregular', 'A empresa promove o envolvimento acionário de forma consistente', 'A empresa respeita os direitos dos acionistas, mas não promove o envolvimento', 'A empresa é líder no envolvimento acionário e no respeito aos direitos dos acionistas', 'governança', 'Envolvimento Acionário e Direitos dos Acionistas'),
(28, 'Quanto à gestão de riscos e conformidade:', 'A empresa não possui uma cultura de gestão de riscos ou conformidade', 'A empresa tem mecanismos, mas não os aplica efetivamente', 'A empresa aplica mecanismos de gestão de riscos e conformidade de forma esporádica', 'A empresa aplica mecanismos de forma consistente', 'A empresa é um exemplo em termos de gestão de riscos e conformidade', 'governança', 'Gestão de Riscos e Conformidade'),
(29, 'Sobre a política de dividendos e alocação de capital:', 'A empresa não possui uma política clara de dividendos ou alocação de capital', 'A empresa possui uma política, mas não a segue regularmente', 'A empresa segue sua política de dividendos e alocação de capital de forma esporádica', 'A empresa segue sua política de forma consistente', 'A empresa é exemplar em termos de política de dividendos e alocação de capital', 'governança', 'Política de Dividendos e Alocação de Capital'),
(30, 'Quanto à gestão de conflitos de interesse:', 'A empresa não lida eficazmente com conflitos de interesse', 'A empresa lida com conflitos de interesse, mas de forma inadequada', 'A empresa lida com conflitos de interesse de forma esporádica', 'A empresa lida com conflitos de interesse de forma consistente', 'A empresa é líder em gestão de conflitos de interesse', 'governança', 'Gestão de Conflitos de Interesse');
