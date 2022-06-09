drop database if exists 8a_db;
Create database 8a_db;
use 8a_bd;

create table usuario(
    id_ussuario int not null primarykey auto_increment,
    nombre varchar (200) not null,
    paterno varchar (200) not null,
    materno varchar(200) not null,
    email varchar (200)not null,
    contrasena varchar(65)not null,
    tipoUsuario int not null
);

insert into usuarios values(1,'Michel','Cuahutepitzi','Ramirez',
'michmeneses20@gmail.com', sha256('1234'),0);

insert into usuarios values(1,'Veronica','Flores','Ramirez',
'michmeneses20@gmail.com', sha256('1234'),1);

create table recetas(
    id_receta int not null primary key auto_increment,
    nombre varchar(200) not null,
    descripcion varchar(200)not null,
    ingredientes text not null,
    id_usuario int not null,
    foreign key (id_usuario) references usuarios(id_usuario)
);