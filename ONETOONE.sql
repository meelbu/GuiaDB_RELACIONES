create database identidad;

use identidad;

create table persona(
id_Persona int auto_increment not null,
nombre varchar(15) not null,
apellido varchar(15) not null,
nacionalidad varchar(20) not null,
genero char(2) not null,
primary key (id_Persona)
);

create table cuit(
cuit int not null,
id_Persona_fk int not null unique,
foreign key(id_Persona_fk) references persona(id_Persona)
);

insert into persona(nombre, apellido, nacionalidad, genero)
values
('Ivan','Gnecco','Argentino','M'),
('Florencia','Goncalvez','Mexicana','F'),
('Cristian','Rojas','Uruguayo','M'),
('Solange','Castro','Argentina','F');

insert into cuit(cuit, id_Persona_fk)
values
('2',1),
('3',2),
('6',3),
('4',4);

insert into cuit(cuit, id_Persona_fk)
values
('8',2);

select * from persona;

select * from cuit;

