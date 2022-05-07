DROP TRIGGER IF EXISTS update_Atendimento_Medico  ON Atendimento_Medico;
DROP FUNCTION IF EXISTS  update_Atendimento_Medico();
DROP TABLE IF EXISTS Prescricao;
DROP TABLE IF EXISTS Medicamento;
DROP TABLE IF EXISTS Apresentacao_Medicamento;
DROP TABLE IF EXISTS Atendimento_Medico;
DROP TABLE IF EXISTS Medico_Especialidade;
DROP TABLE IF EXISTS Especialidade_Medica;
DROP TABLE IF EXISTS Medico;
DROP TABLE IF EXISTS Atestado_Matricula;
DROP TABLE IF EXISTS Instituicao_Ensino;
DROP TABLE IF EXISTS Conjuge;
DROP TABLE IF EXISTS Dependente;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Cartorio;
DROP TABLE IF EXISTS Pessoa;
DROP TABLE IF EXISTS Tipo_Plano;
DROP TABLE IF EXISTS Cidade;

CREATE TABLE Cidade
(
	codigo smallint NOT NULL PRIMARY KEY,
	nome varchar(50) NOT NULL	
);

CREATE TABLE Tipo_Plano
(
	id smallint not null primary key,
	nome varchar(60) not null,
	valor numeric(6,2) not null
);

CREATE TABLE Pessoa
(
	id serial NOT NULL PRIMARY KEY,
	nome varchar(60) NOT NULL,
	sexo char(1) NOT NULL,
	data_nasc date NULL,
	telefone varchar(40) NULL,
	tipo_plano_id smallint NOT NULL 
	    REFERENCES tipo_plano (id),
	cidade_codigo smallint 
		REFERENCES Cidade(codigo),
	CHECK (sexo IN ( 'F' , 'M', 'O' ))
);

CREATE TABLE Funcionario
(
	pessoa_id int NOT NULL PRIMARY KEY REFERENCES Pessoa(id),
	matricula varchar(10) NOT NULL,
	salario_base numeric(7,2) NOT NULL	
);

CREATE TABLE Dependente
(
	pessoa_id int NOT NULL PRIMARY KEY REFERENCES Pessoa(id),
	funcionario_id int NOT NULL REFERENCES Funcionario(pessoa_id),
	Grau_Parentesco char(1) NOT NULL,
	CHECK (Grau_Parentesco IN ( 'F' , 'C' ))
);

CREATE TABLE Instituicao_Ensino
(
	id smallint NOT NULL PRIMARY KEY,
	nome_instituicao varchar(100) NOT NULL,
	CNPJ varchar(18) NOT NULL UNIQUE
);

CREATE TABLE Atestado_Matricula
(
	id smallint NOT NULL PRIMARY KEY,
	pessoa_id int NOT NULL REFERENCES Dependente(pessoa_id),
	IE_ID smallint NOT NULL 
		REFERENCES Instituicao_Ensino(ID),
	Data_Expedicao date NOT NULL,
	Nome_Curso varchar(100) NOT NULL
);

CREATE TABLE Cartorio
(
	id smallint not null PRIMARY KEY,
	nome_cartorio varchar(50) NOT NULL,
	cidade_id int NOT NULL REFERENCES Cidade(codigo),
	telefone varchar(40)
);

CREATE TABLE Conjuge
(
	pessoa_id INT NOT NULL PRIMARY KEY REFERENCES Dependente(pessoa_id),
	tipo_certidao char(2) NOT NULL,
	data_evento timestamp NOT NULL,
	cartorio_id smallint NOT NULL REFERENCES Cartorio(ID),
	numero_livro smallint,
	numero_folha smallint,
	numero_termo int,
	CHECK (tipo_certidao IN ( 'CA' , 'UE' ))	
);

CREATE TABLE Medico
(
	id int NOT NULL PRIMARY KEY,
	pessoa_id int NOT NULL REFERENCES Pessoa(id),
	CRM varchar(10) NOT NULL UNIQUE, -- ÚNICO entre todos os médicos
	cidade_consultorio_id smallint NOT NULL
		REFERENCES Cidade(codigo),
	fone_consultorio varchar(20)
);

CREATE TABLE Especialidade_Medica
(
	codigo varchar(12) NOT NULL PRIMARY KEY,
	nome varchar(60) NOT NULL,
	descricao varchar(512) NOT NULL
);



CREATE TABLE Medico_Especialidade
(
	medico_id int NOT NULL REFERENCES Medico(id),
	codigo_especialidade varchar(12) NOT NULL 
		REFERENCES Especialidade_Medica(codigo),
	data_titulo date,
	constraint PK_Medico_Especialidade PRIMARY KEY 
		(medico_id, codigo_especialidade)
);

CREATE TABLE Atendimento_Medico
(
	ID int NOT NULL PRIMARY KEY,
	tipo_plano_id smallint NOT NULL REFERENCES Tipo_Plano(id),
	paciente_id int NOT NULL REFERENCES Pessoa(id),
	medico_id int NOT NULL,
	especialidade_codigo varchar(12),
	data_hora timestamp NOT NULL,
	FOREIGN KEY (medico_id, especialidade_codigo) 
	   REFERENCES Medico_Especialidade (medico_id, codigo_especialidade)
);


CREATE OR REPLACE FUNCTION update_Atendimento_Medico() RETURNS TRIGGER AS $$
BEGIN
	NEW.tipo_plano_id := (SELECT Pessoa.Tipo_Plano_id FROM Pessoa WHERE Pessoa.id = NEW.paciente_id);
	return NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_Atendimento_Medico
BEFORE INSERT ON Atendimento_Medico
    FOR EACH ROW EXECUTE PROCEDURE update_Atendimento_Medico();


CREATE TABLE Apresentacao_Medicamento
(
	id smallint NOT NULL PRIMARY KEY,
	nome varchar(35) NOT NULL UNIQUE
);

CREATE TABLE Medicamento
(
	id smallint NOT NULL PRIMARY KEY,
	nome varchar(50) NOT NULL	
);

CREATE TABLE Prescricao
(
	ID serial NOT NULL PRIMARY KEY,
	atendimento_id int NOT NULL REFERENCES Atendimento_Medico(ID),
	Medicamento_id int NOT NULL REFERENCES Medicamento(id),
	apresentacao_id smallint NOT NULL
		REFERENCES Apresentacao_Medicamento(id),
	dosagem varchar(20) NOT NULL,
	frequencia varchar(20) NOT NULL,
	duracao varchar(15)	
);


