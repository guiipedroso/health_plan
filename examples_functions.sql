CREATE OR REPLACE FUNCTION incrementa(i integer) 
RETURNS integer AS 
$$
BEGIN
	RETURN i + 1;
END;
$$ 
LANGUAGE plpgsql;

select incrementa(100);

 
CREATE OR REPLACE FUNCTION fn_pessoa
  (in _sexo char, out id int, out nome varchar(60))
AS 
$$ 
	SELECT id, nome FROM pessoa where sexo = _sexo 
$$
LANGUAGE SQL;

SELECT * FROM fn_pessoa('M');

CREATE OR REPLACE FUNCTION fn_pessoa2
  (in char, out int, out varchar(60))
AS 
$$ 
	SELECT id, nome FROM pessoa where sexo = $1 
$$
LANGUAGE SQL;

SELECT * FROM fn_pessoa2('M');

CREATE OR REPLACE FUNCTION fn_pessoa3 (in _sexo char)
RETURNS TABLE(id int, nome varchar(60))
AS
$$
	SELECT id, nome FROM pessoa where sexo = _sexo;
$$
LANGUAGE SQL;

select * from fn_pessoa3('M');

select * from fn_pessoa3('F');

select fn_pessoa3('F');

--https://www.postgresql.org/docs/current/plpgsql-control-structures.html


CREATE OR REPLACE FUNCTION fn_pessoa4 (p_ordem char)
	RETURNS TABLE(id int, nome varchar(60), sexo char) AS
$BODY$ BEGIN    
    p_ordem = UPPER(p_ordem);
    if p_ordem = 'N' THEN
        RETURN QUERY 
           SELECT pessoa.id, pessoa.nome, pessoa.sexo FROM pessoa
           ORDER BY nome;
    ELSE 
	RETURN QUERY 
	   SELECT pessoa.id, pessoa.nome, pessoa.sexo FROM pessoa
         ORDER BY sexo, NOME;
    END IF;
END; $BODY$ LANGUAGE plpgsql;


select * from fn_pessoa4 ('N') ;

select * from fn_pessoa4 ('S') ;

SELECT * FROM Generate_Series(10,15); -- próprio PostgreSQL
SELECT * FROM Generate_Series(15,10);


CREATE OR REPLACE FUNCTION Fn_Serie(Ini int, Fim int)
    RETURNS TABLE(num int)
AS
$BODY$ 
    DECLARE i int; 
BEGIN    
   CREATE TEMPORARY TABLE Resultado (num int); 

   RAISE NOTICE 'Inicial: %; Final: %', Ini, Fim;-- semelhante ao printf

   IF Ini < Fim THEN
       FOR i IN Ini..Fim LOOP
           insert into Resultado values (i);
       END LOOP;
   ELSE
       FOR i IN REVERSE Ini..Fim LOOP
           insert into Resultado values (i);
       END LOOP;
   END IF;

   RETURN QUERY SELECT * FROM Resultado;
   drop table if exists Resultado;
END; 
$BODY$
LANGUAGE plpgsql;

select * from Fn_Serie(10, -10);
SELECT * FROM Generate_Series(10,-10);

SELECT S, Random()*10
FROM Fn_Serie(1, 10) S;



CREATE OR REPLACE FUNCTION Fn_Inteiro_Aleatorio(limite int)
RETURNS integer
AS $$
BEGIN
    return cast(floor(random()*limite) as int);
END;
$$ LANGUAGE plpgsql;

SELECT Fn_Inteiro_Aleatorio(50);

SELECT S,  Fn_Inteiro_Aleatorio(50) A
FROM Fn_serie(1,1000) S;

SELECT Fn_Inteiro_Aleatorio(50) A, COUNT(*)
FROM Fn_serie(1,1000) S
GROUP BY A
ORDER BY COUNT(*) DESC;



CREATE OR REPLACE FUNCTION fn_atualiza_telefone
    (p_id integer, p_telefone character varying)
RETURNS integer AS
$BODY$
BEGIN
    if (SELECT id FROM Pessoa WHERE id = p_id) > 0 THEN
        UPDATE Pessoa 
        SET Telefone = p_telefone
        WHERE id = p_id;

        RAISE NOTICE 'Telefone atualizado com sucesso';
	RETURN 0;
    ELSE
        RAISE 'Código não encontrado';
	RETURN -1;
    END IF;       
END;
$BODY$
LANGUAGE plpgsql;


SELECT fn_atualiza_telefone(1, '(67) 3555-1020');
SELECT fn_atualiza_telefone(1000, '(67) 3554-0000');



select * from pessoa where telefone is not null;


CREATE OR REPLACE FUNCTION Fn_Quant_Depend (func_id int)
RETURNS integer AS
$BODY$
   DECLARE quant int; 
BEGIN
    quant = -10; 

    SELECT count(*) INTO quant
    FROM Dependente
    WHERE Dependente.Funcionario_id = func_id;

    return quant;
END;
$BODY$
LANGUAGE plpgsql;

SELECT pessoa_id, matricula, salario_base, 
  Fn_Quant_Depend(pessoa_id) quant_dependentes
from funcionario;
