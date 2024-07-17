drop database if exists SGDBProductosIN5CM;
create database SGDBProductosIN5CM;
use SGDBProductosIN5CM;

create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar(30),
    marcaProducto varchar(30),
    descripcionProducto varchar(30),
    precio decimal (10,2),
    primary key PK_productoId(productoId)
);

select * from productos;
truncate table Productos;