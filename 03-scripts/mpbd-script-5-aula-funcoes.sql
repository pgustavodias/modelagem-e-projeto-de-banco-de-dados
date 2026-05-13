/*
 * UNIVÁS - SISTEMAS DE INFORMAÇÃO
 * MODELAGEM E PROJETO DE BANCO DE DADOS
 * AULA: FUNÇÕES COMPLEMENTARES DML
 * PROF. GUSTAVO DIAS
 */

-- where

select * 
from cliente 
where cod_cliente = 1

select * 
from cliente 
where cod_cliente <> 1

select * 
from cliente 
where cod_cliente <= 2

-- where com operadores lógicos especiais

select nome 
from cliente 
where cod_cliente in(1,3)

select cod_final, data, data_entrega 
from finalizacao 
where data between '2026-05-13' and '2026-05-31'

create table produto(id int, nome varchar(50));

insert into produto 
values(1, 'abc'),
      (2, 'cde'),
      (3, 'pq'),
      (4, 'pa')
      
select nome  
from produto 
where nome like 'p%'

select nome  
from produto 
where nome like '%q'

select nome  
from produto 
where nome like '%c%'

select * 
from produto 
where id = 1 
  or id = 2
  
-- order by 

  insert into cliente values(0, 'c0', 'e0', 000)
  
 select * 
 from cliente 
 order by cod_cliente 
 
  select * 
 from cliente 
 order by cod_cliente desc 
 
  select empresa, telefone
 from cliente 
 order by 1 desc 
 
 select empresa, telefone
 from cliente 
 order by 1 desc, 2 
 
 -- alias 
 
 select f.cod_final as 'NF', 
   f.data as 'Data Entrada', 
   f.data_entrega as 'Data Entrega' 
 from finalizacao as f 
 