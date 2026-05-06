/*
 * UNIVÁS - SISTEMAS DE INFORMAÇÃO
 * MODELAGEM E PROJETO DE BANCO DE DADOS
 * AULA: DML
 * PROF. GUSTAVO DIAS
 */

create table login(
  id int primary KEY comment "Id do login",
  email varchar(255) not null default 'ni' comment "Email",
  senha varchar(255) not null default 'ni' comment "Snha",
  nivel_acesso int not null default 0 comment "Nível acesso"
);


-- operação de insert 
-- insere registros na tabela
insert into login(id, email, senha, nivel_acesso)
  values(1, 'l1@l1.com', '1234', 1)
  
insert into login(id, email, senha, nivel_acesso)
  values(2, 'l2@l2.com', '1234', 1),
    (3, 'l3@l3.com', '1234', 1),
    (4, 'l4@l4.com', '1234', 1),
    (5, 'l5@l5.com', '1234', 1);

-- operação de select 
-- consulta registros em uma tabela
select * 
from login 

select id, 
  email
from login 


-- operação de update 
-- atualiza o valor de um ou mais atributos de uma tabela
update login 
  set nivel_acesso = 0

  
-- operação de delete
-- exclui registros em uma tabela
delete from login   
  
