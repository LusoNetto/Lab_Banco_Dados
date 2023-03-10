# Este é um guia de como popular um banco de dados da Oracle
## Como criar as tabelas:

------------------------------------------------------------

creat table emp (
	cd_emp number,
	rm_emp varchar2(15),
	/* (*,2) vai deixar o numero com todo espaço para '*' e somente '2' para depois da virgula */
	vl_sal number(*,2), 
)

/* O commit vai evetivamente tornar real a execução dos comandos na base */
commit;

insert int emp values(1, 'Joao', 100.00)

select * from emp

------------------------------------------------------------