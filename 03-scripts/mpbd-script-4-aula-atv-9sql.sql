/*
 * UNIVÁS - SISTEMAS DE INFORMAÇÃO
 * MODELAGEM E PROJETO DE BANCO DE DADOS
 * AULA: CORREÇÃO COMENTADA ATIVIDADE 9
 * PROF. GUSTAVO DIAS
 */

-- criação do modelo de dados
create table cliente(
  cod_cliente int primary key,
  nome varchar(30),
  empresa varchar(20),
  telefone varchar(20)
);

create table tecnico(
  cod_tecnico int primary key,
  nome varchar(30)
);

create table servico(
  cod_servico int primary key,
  atividade varchar(30)
);

create table finalizacao(
  cod_final int primary key,
  valor_total numeric(12,2),
  data timestamp,
  data_entrega timestamp
);

create table ordem_de_servico(
  cod_ordem int primary key,
  data timestamp, 
  defeito varchar(60),
  equipamento varchar(60),
  cod_cliente int,
  cod_tecnico int,
  cod_final int
);

alter table ordem_de_servico  
  add constraint fk_cliente foreign key(cod_cliente)
  references cliente(cod_cliente)
  on delete cascade 
  on update cascade;

alter table ordem_de_servico  
  add constraint fk_tecnico foreign key(cod_tecnico)
  references tecnico(cod_tecnico)
  on delete cascade 
  on update cascade;

alter table ordem_de_servico  
  add constraint fk_final foreign key(cod_final)
  references finalizacao(cod_final)
  on delete cascade 
  on update cascade;

create table relacao_3(
  cod_ordem int,
  cod_servico int,
  constraint fk_ordem foreign key(cod_ordem)
    references ordem_de_servico(cod_ordem)
    on delete cascade 
    on update cascade,
  constraint fk_servico foreign key(cod_servico)
    references servico(cod_servico)
    on delete cascade
    on update cascade 
);


-- correção letra a
insert into cliente(cod_cliente, nome, empresa, telefone)
  values(1, 'c1', 'e1', '111'),
        (2, 'c2', 'e2', '222'),
        (3, 'c3', 'e3', '333')

insert into finalizacao(cod_final, valor_total, data, data_entrega)
  values (1, 1, '2026-05-13 00:00:00', '2026-05-13 00:00:00'),
         (2, 2, '2026-05-13 00:00:00', '2026-05-13 00:00:00'),
         (3, 3, '2026-05-13 00:00:00', '2026-05-13 00:00:00')

         
-- correção letra b         
select nome, telefone 
from cliente 


-- correção letra c
update finalizacao set data_entrega = '2000-12-31 00:00:00'



