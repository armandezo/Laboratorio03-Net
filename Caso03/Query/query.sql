create proc USP_FECHAFECHA 
@FEC1 datetime , @FEC2 datetime 
as
begin
select IdPedido,IdCliente,FechaPedido,FechaEnvio,FechaEntrega
From Pedidos
WHERE FechaPedido between @FEC1 and @FEC2
end

 create procedure usp_detalle
 @IdPedido int 
 as
 begin
 select dp.idpedido,  p.nombreProducto,p.categoriaProducto,nombreCompañia,nombrecontacto,dp.preciounidad , dp.cantidad,(dp.preciounidad*dp.cantidad) as Total
 from detallesdepedidos as dp
 join productos as p on p.idproducto = dp.idproducto
 join proveedores as pr on pr.idProveedor = p.idProveedor
 where dp.idpedido = @IdPedido;
 end
create procedure usp_Total
@IdPedido INT,
@Total Money Output
as 
begin
SET @Total = (
Select Sum(preciounidad*cantidad)
from detallesdepedidos
where idpedido = @IdPedido)
end


create proc Usp_ListarClientes 
as
select idCliente,NombreContacto,NombreCompañia,CargoContacto
from clientes;


create proc usp_ListarEmpleados
as
select IdEmpleado,Apellidos,Nombre,FechaNacimiento,direccion
from Empleados

create proc usp_pais
as 
begin
select distinct pais
from proveedores
end

create proc usp_listarProveedor
as 
begin
select idProveedor,nombreCompañia,pais,ciudad
from proveedores
end

create procedure usp_login
@usuario varchar(20),
@password varchar(20),
@response bit Output
as
begin
IF @usuario = 'Erick' AND @password = '12345'
begin
	set @response = 1;
end
else
begin
	set @response = 0;
end
end



