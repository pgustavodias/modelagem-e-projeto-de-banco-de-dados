/*
 * UNIVÁS - SISTEMAS DE INFORMAÇÃO
 * MODELAGEM E PROJETO DE BANCO DE DADOS
 * AULA: CORREÇÃO COMENTADA ATIVIDADES 7 E 8
 * PROF. GUSTAVO DIAS
 */

create table login(
  id int primary KEY comment "Id do login",
  email varchar(255) not null default 'ni' comment "Email",
  senha varchar(255) not null default 'ni' comment "Snha",
  nivel_acesso int not null default 0 comment "Nível acesso"
);

create table empresa(
  id int primary KEY comment "Id da empresa",
  nome varchar(255) not null default 'ni' comment "Nome"
);

create table entregador(
  id int primary KEY comment "Id do entregador",
  id_empresa int comment "Id Empresa",
  constraint fk_empresa foreign key(id_empresa)
    references empresa(id)
    on delete cascade
    on update cascade
);

create table cliente(
  telefone varchar(255) primary key comment "Telefone",
  nome varchar(255) not null default 'ni' comment "Nome"
);

create table pedido(
  id int primary key comment "Id do pedido",
  telefone_cliente varchar(255) comment "Telefone",
  id_entregador int comment "Id entregador"
);

alter table pedido  
  add constraint fk_cliente foreign key(telefone_cliente)
  references cliente(telefone)
  on delete cascade 
  on update cascade;

alter table pedido  
  add constraint fk_entregador foreign key(id_entregador)
  references entregador(id)
  on delete cascade 
  on update cascade;

create table marmita(
  id int primary key comment "Id marmita",
  nome varchar(255) not null default 'ni' comment "Nome"
);

create table item_pedido(
  id_marmita int comment "Id marmita",
  id_pedido int comment "Id pedido"
);

alter table item_pedido 
  add constraint fk_marmita foreign key(id_marmita)
  references marmita(id);

alter table item_pedido 
  add constraint fk_pedido foreign key(id_pedido)
  references pedido(id);

