create database consultorio;

use consultorio;

--m�dico e paciente

-- m�dico => codigo, nome, crm, datanascimento ---idade, especialidades---
--> PK vai atuar sobre o CODIGO
--> codigo: identificador �nico interno (PK). 
------------ valor: (auto-incremento) iniciar com um valor e definir o incremento para os demais valores de forma autom�tica
--> nome: qual tipo de dado? string => char / varchar / nchar / nvarchar ?? R. varchar(200)
-------- char => conjunto de caracteres com tamanho fixo => char(10) => 10 caracteres
-----------------ex.: nome char(10) => Ze (2 caracteres) => Ze________ (8 espa�os em branco)
-------- varchar => conjunto de caracteres com tamanho vari�vel => varchar(10) => no m�ximo 10 caracteres
-----------------ex.: nome varchar(10) => Ze (2 caracteres) => Ze (ocupam 2 caracteres)
--> crm (6 digitos + '/' + 2 caracteres estado) Ex.: 123456/SP (suposi��o) char(9)
--> datanascimento => date

create table medico (
	codigo int not null identity (1,1),
	nome varchar(200) not null,
	datanascimento date,
	crm char(9) not null,
	constraint pk_medico primary key (codigo)

);

truncate table medico; --eliminou os registros da tabela e efetuou o "reset" nos contadores ligados a esta tabela.


--tabela => Paciente codigo int pk, nome varchar(200) e email varchar(100)

drop table paciente;

create table paciente (
	codigo int not null,
	nome varchar(200) not null,
	email varchar(100),
	constraint pk_paciente primary key (codigo)
);

sp_help paciente;

create table consulta (
    idconsulta int not null identity (1,1),
	codigom int not null,
	codigop int not null,
	[data] date not null,
	idfunc int not null,
	constraint fk_consulta_id foreign key (idfunc) references usuario (id),
	constraint fk_consulta_medico foreign key (codigom) references medico (codigo),
	constraint fk_consulta_paciente foreign key (codigop) references paciente (codigo),
	
);

drop table usuario;

truncate table consulta;
drop table consulta;

 create table usuario(
 id int not null identity (1,1),
 login varchar(100) not null,
 senha varchar (100) not null,
 telefone int   ,

 constraint pk_usuario_login primary key (id) );
 insert  into usuario ( login ,senha) values ('a','b')

 select * from usuarioad
 create table usuarioad(
 login varchar(100) not null,
 senha varchar (100) not null,
 constraint pk_usuarioad_login primary key (login) );
 insert  into usuarioad( login ,senha) values ('admin','admin')
 