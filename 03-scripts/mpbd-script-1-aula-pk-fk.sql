/*
 * UNIVÁS - SISTEMAS DE INFORMAÇÃO
 * MODELAGEM E PROJETO DE BANCO DE DADOS
 * AULA: CHAVES PRIMÁRIA E ESTRANGEIRA
 * PROF. GUSTAVO DIAS
 */


-- CRIAÇÃO DE CHAVE PRIMÁRIA DURANTE O CREATE TABLE
create table produto(
  cod int, 
  nome varchar(20),
  id_categoria int, 
  primary key (cod)
);


-- CRIAÇÃO DE CHAVE PRIMÁRIA COM ALTER TABLE
create table categoria(
  id int, 
  nome varchar(20)
);

alter table categoria 
  add primary key(id);


-- CRIAÇÃO DE TABELA ATRIBUINDO PROPRIEDADES AOS ATRIBUTOS
create table categoria(
  id int primary key comment "id da categoria",
  nome varchar(20) default 'NI' not null comment "nome da categoria"
);

-- ALTERANDO PROPRIEDADE DE ATRIBUTO APÓS CRIAÇÃO DE TABELA
alter table produto 
  modify nome varchar(30)
  not null
  default 'NI'
  comment "Nome do produto"

-- CRIAÇÃO DE CHAVE ESTRANGEIRA APÓS A CRIAÇÃO DA TABELA
alter table produto  
  add constraint foreign key(id_categoria)
  references categoria(id)
  on delete cascade 
  on update cascade;





