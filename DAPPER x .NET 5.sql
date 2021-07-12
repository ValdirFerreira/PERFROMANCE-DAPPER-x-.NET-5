

create database crud_procedure_mvc
go 
use crud_procedure_mvc
create table Usuario
(
Id int primary key identity,
Nome varchar(250)
)

go
create procedure ListarUsuarios

as 
Begin 
select * from Usuario 
End 
go

declare @V_EXTERNO int = 1

BEGIN
    WHILE @V_EXTERNO < 2000000  
    BEGIN
       insert into Usuario (Nome) values('Nome - ' + Convert(varchar(10), @V_EXTERNO) )
       SET @V_EXTERNO = @V_EXTERNO + 1;
      
    END;
END;