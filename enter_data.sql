INSERT INTO Cidade VALUES (1, 'Três Lagoas');
INSERT INTO Cidade VALUES (2, 'Campo Grande');
INSERT INTO Cidade VALUES (3, 'Corumbá');
INSERT INTO Cidade VALUES (4, 'Água Clara');
INSERT INTO Cidade VALUES (5, 'Dourados');
INSERT INTO Cidade VALUES (6, 'Ponta Porã');
INSERT INTO Cidade VALUES (7, 'Andradina');
INSERT INTO Cidade VALUES (8, 'São Paulo');


INSERT INTO Cartorio(id, nome_cartorio, cidade_id, telefone)
	VALUES (1, 'Cartório Três Coracoes', 1, '(67) 3521-2121; (67) 3521-3131');
INSERT INTO Cartorio(id, nome_cartorio, cidade_id)
	VALUES (2, 'Cartório treslagoense', 1);
INSERT INTO Cartorio(nome_cartorio, cidade_id, id)
	VALUES ('Santos Pereira', 2, 3);
INSERT INTO Cartorio(id, nome_cartorio, cidade_id)
	VALUES (4, '5º Ofício de Notas', 2);
INSERT INTO Cartorio(id, nome_cartorio, cidade_id)
	VALUES (5, '7º Ofício', 2);
INSERT INTO Cartorio(id, nome_cartorio, cidade_id)
	VALUES (6, 'Mathias e Rezende', 8);
INSERT INTO Cartorio(id, nome_cartorio, cidade_id)
	VALUES (7, 'Mathias e Rezende', 7);	
INSERT INTO Cartorio(id, nome_cartorio, cidade_id)
	VALUES (8, 'Mathias e Rezende', 2);		


INSERT INTO Tipo_Plano(id, nome, valor) 
	VALUES (1, 'Participativo - Enfermaria', 350.00);
INSERT INTO Tipo_Plano(id, nome, valor) 
	VALUES (2, 'Participativo - Apartamento', 450.00);
INSERT INTO Tipo_Plano(id, nome, valor) 
	VALUES (3, 'Sem Participação - Enfermaria', 500.00);
INSERT INTO Tipo_Plano(id, nome, valor) 
	VALUES (4, 'Sem Participação - Apartamento', 600.00);
INSERT INTO Tipo_Plano(id, nome, valor) 
	VALUES (5, 'Sem Participação - Apartamento - Transporte Aéreo', 1500.00);

INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (1, 'Pó/Granulado');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (2, 'Comprimido');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (3, 'Drágea');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (4, 'Cápsula');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (5, 'Supositório');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (6, 'Óvulo');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (7, 'Pastilha');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (8, 'Solução Oral');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (9, 'Solução Estéril');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (10, 'Solução Nasal');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (11, 'Solução Oftálmica');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (12, 'Solução Otológica');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (13, 'Injetável');
INSERT INTO Apresentacao_Medicamento (id, nome) 
	VALUES (14, 'Pomada');

INSERT INTO Medicamento VALUES (1, 'Neosaldina');
INSERT INTO Medicamento VALUES (2, 'Amoxicilina');
INSERT INTO Medicamento VALUES (3, 'Benalet');
INSERT INTO Medicamento VALUES (4, 'Emulsão de vaselina líquida (Agarol)');
INSERT INTO Medicamento VALUES (5, 'Emulsão de Scott');
INSERT INTO Medicamento VALUES (6, 'Betametasona');
INSERT INTO Medicamento VALUES (7, 'Beclometasona');
INSERT INTO Medicamento VALUES (8, 'Salbutamol');
INSERT INTO Medicamento VALUES (9, 'Paracetamol');
INSERT INTO Medicamento VALUES (10, 'Dipirona');
INSERT INTO Medicamento VALUES (11, 'Bezetacil');
INSERT INTO Medicamento VALUES (12, 'Gelol');


INSERT INTO especialidade_medica (codigo, nome, descricao) 
	VALUES ('IMUNO', 'Alergia e Imunologia', 
	      'diagnóstico e tratamento das doenças alérgicas e do sistema imunológico.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ANEST', 'Anestesiologia', 'área da Medicina que envolve o tratamento da dor, a hipnose e o manejo intensivo do paciente sob intervenção cirúrgica ou procedimentos.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ANGIO', 'Angiologia', 'é a área da medicina que estuda o tratamento das doenças do aparelho circulatório.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ONCO', 'Cancerologia (oncologia)', 'é a especialidade que trata dos tumores malignos ou câncer.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('CARDIO', 'Cardiologia', 'aborda as doenças relacionadas com o coração e sistema vascular.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('CARDIO_CIR', 'Cirurgia Cardiovascular', 'tratamento cirúrgico de doenças do coração.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ORTO_CIR', 'Cirurgia da Mão', 'sub-especialidade da Ortopedia que aborda os problemas de saúde relacionados as mãos.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('GASTO_CIR', 'Cirurgia do Aparelho Digestivo', 'tratamento clínico e cirúrgico dos órgãos do aparelho digestório, como o esôfago, estômago, intestinos, fígado e vias biliares, e pâncreas.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('GERAL_CIR', 'Cirurgia Geral', 'é a área que engloba todas as áreas cirúrgicas, sendo também subdividida.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('PEDIAT_CIR', 'Cirurgia Pediátrica', 'cirurgia geral em crianças.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('PLAT_CIR', 'Cirurgia Plástica', 'correção das deformidades, malformações ou lesões que comprometem funções dos órgãos através de cirurgia de caráter reparador ou cirurgias estéticas.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('TORA_CIR', 'Cirurgia Torácica', 'atua na cirurgia da caixa torácica e vias aéreas.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('VASCULAR_CIR', 'Cirurgia Vascular', 'tratamento das veias e artérias, através de cirurgia, procedimentos endovasculares ou tratamentos clínicos.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('CLINICA', 'Clínica Médica (Medicina interna) ', 'é a área que engloba todas as áreas não cirúrgicas, sendo subdividida em várias outras especialidades.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('DERMATO', 'Dermatologia', 'é o estudo da pele anexos (pelos, glândulas), tratamento e prevenção das as doenças.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ENDO', 'Endocrinologia e Metabologia', 'é a área da Medicina responsável pelo cuidados aos hormônios, crescimento e glândulas como adrenal, tireoide, hipófise, pâncreas endócrino e outros.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('GASTRO', 'Gastroenterologia', 'é o estudo, diagnóstico, tratamento e prevenção de doenças relacionadas ao aparelho digestivo, desde erros inatos do metabolismo, doença do trato gastrointestinal, doenças do fígado e cânceres.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('GERIAT', 'Geriatria', 'é a subespecialidade médica que cuida dos idosos e articula seu tratamento com outras especialidades.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('GINECO', 'Ginecologia e obstetrícia', 'é a especialidade médica que aborda de forma integral a mulher. Trata desde as doenças infecciosas sexuais, gestação, alterações hormonais, reprodução.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('HEMATO', 'Hematologia e Hemoterapia', 'é o estudo dos elementos figurados do sangue (hemácias, leucócitos, plaquetas) e da produção desses elementos nos órgãos hematopoiéticos (medula óssea, baço, linfonódos), além de tratar das anemias, linfomas, leucemias e outros cânceres, hemofilia e doenças da coagulação');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('INFECTO', 'Infectologia', 'prevenção, diagnóstico e tratamentos de infecções causadas por vírus, bactérias, fungos e parasitas (helmINTOlogia, protozoologia, entomologia e artropodologia).');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('MATO', 'Mastologia', 'subespecialidade que trata da mama, suas doenças, alterações benignas e estéticas.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('FAMILIA', 'Medicina de Família e Comunidade', 'é a área da medicina que trata do indivíduo em seu ambiente familiar e comunitário, com foco na prevenção e tratamento das doenças mais comuns, sendo o articulador do encaminhamento aos especialistas quando necessária abordagem mais aprofundada das doenças.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('EMERGENCIA', 'Medicina de Emergência', 'especialidade que atua no cuidado de pacientes com doenças ou lesões que requerem atenção médica imediata, atuando nas Emergências, pronto-atendimentos e serviços pré-hospitalares.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('TRABALHO', 'Medicina do Trabalho', 'trata do processo de trabalho e da relação deste com as doenças. Atua desde a prevenção dos agravos, a minimização dos efeitos destes e do tratamento das doenças do trabalho quando já estabelecidas.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ESPORTE', 'Medicina Esportiva', 'abordagem do atleta de uma forma global, desde a fisiologia do exercício à prevenção de lesões, passando pelo controle de treino e resolução de problemas de saúde que envolvam o praticante do exercício físico.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('LEGAL', 'Medicina Legal e Perícia Médica (ou medicina forense)', 'é a especialidade que aplica os conhecimentos médicos aos interesses da Justiça, na elaboração de leis e na adequada caracterização dos fenômenos biológicos que possam interessar às autoridades no sentido da aplicação das leis. Assim a Medicina Legal caracteriza a lesão corporal, a morte (sua causa, o momento em que ocorreu, que agente a produziu), a embriaguez pelo álcool ou pelas demais drogas, a violência sexual de qualquer natureza, etc.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('NUCLEAR', 'Medicina Nuclear', 'é o estudo imaginológico ou terapia pelo uso de radiofármacos.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('NEFRO', 'Nefrologia', 'é a parte da medicina que estuda e trata clinicamente as doenças do rim, como insuficiência renal.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('NEURO_CIR', 'Neurocirurgia', 'atua no tratamento de doenças do sistema nervoso central e periférico passíveis de abordagem cirúrgica.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('NEURO', 'Neurologia', 'é a parte da medicina que estuda e trata o sistema nervoso.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('NUTRO', 'Nutrologia', 'diagnóstico, prevenção e tratamento de doenças do comportamento alimentar.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('OBSTET', 'Obstetrícia', 'é a área da medicina atrelada à Ginecologia que cuida das mulheres em relação ao processo da gestação (pré, pós-parto, puerpério, gestação e outros).');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('OLFTALMO', 'Oftalmologia', 'é a parte da medicina que estuda e trata os distúrbios dos olhos.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('ORTO', 'Ortopedia e Traumatologia', 'é a parte da medicina que estuda e trata as doenças do sistema osteomuscular, locomoção, crescimento, deformidades e as fraturas.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('OTORRINO', 'Otorrinolaringologia', 'é a parte da medicina que estuda e trata as doenças da orelha, nariz, seios paranasais, faringe e laringe.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('PEDIAT', 'Pediatria', 'é a parte da medicina que estuda e trata crianças.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('PNEUMO', 'Pneumologia', 'é a parte da medicina que estuda e trata o sistema respiratório.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('PSIQ', 'Psiquiatria', 'é a parte da medicina que previne e trata ao transtornos mentais e comportamentais.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('RADIO', 'Radiologia e Diagnóstico por Imagem', 'realização e interpretação de exames de imagem como raio-X, ultrassonografia, Doppler colorido, Tomografia Computadorizada, Ressonância Magnética, entre outros.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('REUMATO', 'Reumatologia', 'é a especialidade médica que trata das doenças do tecido conjuntivo, articulações e doenças autoimunes. Diferente do senso comum o reumatologista não trata somente reumatismo.');
INSERT INTO especialidade_medica (codigo, nome, descricao) VALUES ('URO', 'Urologia', 'é a parte da medicina que estuda e trata cirurgicamente e clinicamente os problemas do sistema urinário e do sistema reprodutor masculino e feminino.');

INSERT INTO Instituicao_Ensino (id, nome_instituicao, CNPJ)
	values (694, 'UFMS - Universidade Federal de Mato Grosso do Sul', '15.461.510/0001-33');
INSERT INTO Instituicao_Ensino (id, nome_instituicao, CNPJ)
	values (15520, 'IFMS - Instituto Federal de Educação, Ciência e Tecnologia de Mato Grosso do Sul', '10.673.078/0001-20');
INSERT INTO Instituicao_Ensino (id, nome_instituicao, CNPJ)
	values (1038, 'FACULDADES INTEGRADAS DE TRÊS LAGOAS - AEMS', '01.923.317/0001-62');
	

INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc, telefone)
  VALUES ('Fred Salomão Frajuca', 'M', 1, 1, '01/01/2000', '(67) 3522-2222' );
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('William Cavaco Condorcet', 'M', 2, 1, '05/01/1985');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Anny Café Martinho', 'F', 5, 1, '06/05/1995');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc, telefone)
  VALUES ('Amanda Prince Adarga Madeira', 'F', 3, 6, '01/01/2010', '(67) 3522-2227');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Júlia Branco Mascarenhas', 'F', 2, 1, '01/01/2000');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Ezequiel Escobar Valadão', 'M', 5, 1, '01/01/1980');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Gabriel Bento Leão', 'M', 5, 8, '10/10/1967');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Raul Mourato Casalinho', 'M', 5, 1, '10/10/1995');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Jair Leitão Berenguer', 'M', 3, 1, '10/03/1997');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Nicolas Vinicius Nogueira Alves', 'M', 2, 1, '10/10/1995');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Louise Atilano Henriques', 'F', 3, 1, '10/03/1995');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Bella Braga Graça', 'F', 2, 1, '10/03/1988');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Brayan Veleda Barrocas', 'M', 2, 6, '10/03/1988');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Bárbara Trindade Bencatel', 'F', 1, 6, '03/03/1980');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Suri Caiado Fitas', 'M', 2, 6, '02/02/1990');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Teresa Leal Afonso', 'F', 2, 6, '02/02/2010');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Mariana Aquino Alvarenga', 'F', 1, 1, '02/02/2020');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('João Carlos Bronzatti', 'M', 2, 1, '02/02/1970');
INSERT INTO Pessoa(nome, sexo, tipo_plano_id, cidade_codigo, data_nasc)
  VALUES ('Maria Clara Dicati', 'F', 2, 1, '03/04/2001');


INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (1, '2525', 6000);
INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (2, '4040', 7500);	
INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (3, '4040', 4000);	
INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (5, '127489', 7599.98);	
INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (6, '452040', 8000);		
INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (7, '007', 18999.98);	
INSERT INTO Funcionario (Pessoa_id, matricula, salario_base)
	VALUES (12, '25289', 7999.98);	


INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (18, 2, 'C');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (1, 2, 'F');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (9, 7, 'F');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (10, 7, 'F');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (16, 7, 'F');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (17, 7, 'F');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (19, 5, 'C');
INSERT INTO Dependente (pessoa_id, funcionario_id, Grau_Parentesco)
	VALUES (4, 2, 'F');


INSERT INTO Medico(id, pessoa_id, CRM, cidade_consultorio_id, fone_consultorio)
	values (1, 7, '7225/MS', 1, '(67) 3522-1111');
INSERT INTO Medico(id, pessoa_id, CRM, cidade_consultorio_id, fone_consultorio)
	values (2, 10, '1255/MS', 2, '(67) 3734-1010');
INSERT INTO Medico(id, pessoa_id, CRM, cidade_consultorio_id, fone_consultorio)
	values (3, 12, '1010/MS', 2, '(67) 3734-1010');
INSERT INTO Medico(id, pessoa_id, CRM, cidade_consultorio_id, fone_consultorio)
	values (4, 11, '2813/SP', 8, '(11) 1111-0001');

INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (1, 'CARDIO', '2015/01/07');
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (1, 'CARDIO_CIR', '2010/08/07');	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (2, 'FAMILIA', '2005/08/07');	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (2, 'TRABALHO', '2008/08/07');	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (2, 'ESPORTE', '2017/10/10');	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (3, 'FAMILIA', '2004/01/03');	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (3, 'OLFTALMO', NULL);	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (3, 'PEDIAT', NULL);	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (4, 'PEDIAT', NULL);	
INSERT INTO Medico_Especialidade(Medico_id, codigo_especialidade, data_titulo)
	VALUES (4, 'PEDIAT_CIR', NULL);		


INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (1, 3, 2, 'TRABALHO', '2015/03/01 10:00');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (2, 3, 2, 'TRABALHO', '2016/03/01 10:00');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (6, 5, 4, 'PEDIAT', '2017/06/25 08:35');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (7, 5, 4, 'PEDIAT', '2017/07/25 22:35');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (8, 5, 4, 'PEDIAT', '2017/08/25 20:30');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (9, 5, 4, 'PEDIAT_CIR', '2017/07/25 22:15');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (10, 6, 2, 'ESPORTE', '2016/07/25 18:00');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (11, 9, 2, 'ESPORTE', '2016/07/25 18:45');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (12, 2, 2, 'ESPORTE', '2016/07/25 19:30');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (13, 3, 2, 'ESPORTE', '2016/07/25 20:00');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (14, 4, 2, 'ESPORTE', '2016/07/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (15, 9, 2, 'ESPORTE', '2016/07/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (16, 9, 2, 'ESPORTE', '2016/08/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (17, 9, 2, 'ESPORTE', '2016/09/25 20:10');
-- MUDANDO PLANO DA PACIENTE
UPDATE Pessoa SET Tipo_Plano_id = 5 WHERE ID = 9;
UPDATE Pessoa SET Tipo_Plano_id = 2 WHERE ID = 3;
--	

INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (18, 9, 2, 'ESPORTE', '2016/10/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (19, 9, 2, 'ESPORTE', '2016/11/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (20, 9, 2, 'ESPORTE', '2017/03/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (22, 3, 2, 'TRABALHO', '2017/03/30 14:00');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (24, 5, 3, 'PEDIAT', '2017/05/25 08:35');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (25, 9, 2, 'ESPORTE', '2017/06/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (30, 9, 2, 'ESPORTE', '2017/09/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (35, 9, 2, 'ESPORTE', '2017/12/25 20:10');
INSERT INTO Atendimento_Medico (ID, paciente_id, medico_id, especialidade_codigo, data_hora)
	VALUES (37, 3, 2, 'TRABALHO', '2018/04/25 08:35');

INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (24, 9, 4, '1', '8/8 horas', '5 dias');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (24, 10, 2, '2', '6/6 horas', 'SE febre');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (6, 8, 8, '1', '4/4 horas', 'SE Crise');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (6, 2, 2, '500mg', '6/6 horas', '7 dias');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (7, 8, 8, '1', '4/4 horas', 'SE Crise');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (7, 2, 2, '1000mg', '6/6 horas', '7 dias');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (8, 8, 8, '1', '4/4 horas', 'SE Crise');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (8, 2, 2, '1000mg', '6/6 horas', '7 dias');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (9, 8, 8, '1', '4/4 horas', 'SE Crise');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (9, 9, 4, '1', '8/8 horas', '5 dias');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	VALUES (9, 11, 12, '1g', '1 injeção/dia', '5 dias');
INSERT INTO Prescricao (atendimento_id, Medicamento_id, apresentacao_id, dosagem, frequencia, duracao)
	SELECT ID, 12, 14, 'camada fina', '6/6 horas', 'SE DOR'
	FROM Atendimento_Medico
	WHERE especialidade_codigo = 'ESPORTE';

INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (1, 1, 694, '01/02/2018', 'Superior em Sistemas de Informação');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (2, 1, 15520, '30/06/2018', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (3, 9, 15520, '01/02/2016', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (4, 9, 15520, '01/07/2016', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (5, 10, 15520, '01/02/2017', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (6, 10, 15520, '20/07/2017', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (7, 10, 15520, '01/03/2018', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (8, 10, 15520, '20/08/2018', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (9, 16, 694, '01/02/2016', 'Licenciatura em Geografia');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (10, 16, 694, '01/07/2016', 'Licenciatura em Geografia');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (11, 16, 694, '01/02/2017', 'Licenciatura em Geografia');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (12, 16, 15520, '20/07/2017', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (13, 16, 15520, '01/03/2018', 'Superior em Análise e Desenvolvimento de Sistemas');
INSERT INTO Atestado_Matricula (id, pessoa_id, ie_id, data_expedicao, nome_curso)
	VALUES (14, 16, 15520, '20/08/2018', 'Superior em Análise e Desenvolvimento de Sistemas');


INSERT INTO Conjuge (pessoa_id, tipo_certidao, data_evento,
	cartorio_id, numero_livro, numero_folha, numero_termo)
	VALUES  (19, 'CA', '25/10/2016', 1, 20, 10, 5254);
INSERT INTO Conjuge (pessoa_id, tipo_certidao, data_evento,
	cartorio_id, numero_livro, numero_folha, numero_termo)
	VALUES  (18, 'UE', '10/10/2008', 5, 2, 50, 6754);
	
	