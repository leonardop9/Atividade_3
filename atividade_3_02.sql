USE RELACIONAMENTOS_200


Create table CLIENTES(
		codigo int identity (1,1) primary key,
		nome varchar(100),
		endereco varchar(100),
		datanascimento datetime,
		telefone varchar(25),
		email varchar(100)	)




Create table PRODUTOS(
		codigo int identity (1,1) primary key,
		descricao varchar(150),
		valorvenda numeric(18,2),
		ativo bit default(1) 	)




Create table VENDAS(
		codigo int identity (1,1) primary key,
		cliente int references CLIENTES(codigo),
		produto int references PRODUTOS(codigo),
		datavenda datetime default getdate(),
		quantidade int,
		valorvenda numeric(18,2))



