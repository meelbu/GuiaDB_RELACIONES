create database supermercado;

use supermercado;

create table factura(
id_Factura int auto_increment,
producto varchar(45) not null,
cantidad int not null,
primary key(id_Factura)
);

create table cliente(
id_Cliente int auto_increment,
nombre varchar(45) not null,
apellido varchar(45) not null,
direccion varchar(200),
primary key(id_Cliente)
);

create table factura_cliente(
id_factura_fk int not null,
id_cliente_fk int not null
);

alter table factura_cliente add constraint factura_cliente_fk0 foreign key(id_factura_fk) references factura(id_Factura);

alter table factura_cliente add constraint factura_cliente_fk1 foreign key(id_cliente_fk) references cliente(id_Cliente);

insert into factura (producto, cantidad)
values ('Papas fritas lays messi', '120');

select * from factura;

insert into cliente (nombre, apellido, direccion)
values ('Andres','Giardello','Mosotti 269');

select * from cliente;

insert into factura_cliente(id_factura_fk, id_cliente_fk)
values (1,1);

select * from factura_cliente;

insert into factura(producto, cantidad)
values('Gaseosa coca-cola','200');

select * from factura;

insert into factura_cliente(id_factura_fk, id_cliente_fk)
values (2,1);

select * from factura_cliente;



