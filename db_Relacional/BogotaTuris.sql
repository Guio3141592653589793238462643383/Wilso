drop database proyecto;

create database proyecto; 

use proyecto;

create table rol (
	id_rol int auto_increment not null, 
    rol varchar (20) not null,
    primary key (id_rol)
);

create table correo(
	id_correo int auto_increment not null,
    correo varchar (255) not null,
    primary key (id_correo)
);

create table nacionalidad(
	id_nac int auto_increment not null,
    nacionalidad varchar (50) not null,
    primary key (id_nac)
);

create table intereses(
	id_inte int auto_increment not null,
    interes varchar (80) not null,
    primary key (id_inte)
);

create table inte_categoria(
	id_inte_cate int auto_increment not null,
    categoria varchar (80) not null,
    id_inte int not null,
    primary key (id_inte_cate),
    foreign key (id_inte) references intereses (id_inte)
);

create table usuario(
	id_usuario int auto_increment not null,
    primer_nombre varchar (50) not null,
    segundo_nombre varchar (50) not null,
    primer_apellido varchar (50) not null,
    segundo_apellido varchar (50) not null, 
    clave varchar (20) not null,
    id_rol int not null,
    id_correo int not null,
    id_nac int not null,
    id_inte int not null,
    primary key (id_usuario),
    foreign key (id_rol) references rol (id_rol),
	foreign key (id_correo) references correo (id_correo),
    foreign key (id_nac) references nacionalidad (id_nac),
    foreign key (id_inte) references intereses (id_inte)
);

CREATE TABLE reporte_incidente (
    id_report INT AUTO_INCREMENT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    fecha_report DATETIME NOT NULL,
    estado VARCHAR(80) not null,
    id_usuario int not null,
    primary key (id_report),
    foreign key (id_usuario) references usuario (id_usuario)
);

create table comentarios(
	id_com int not null,
    tipo_com varchar (50) not null,
    fecha_com date not null,
    id_usuario int not null,
    primary key (id_com),
    foreign key (id_usuario) references usuario (id_usuario)
);

create table lugar(
	id_lugar int not null,
    nombre_lugar varchar (60) not null,
    tipo_lugar varchar (60) not null,
    direccion varchar (255) not null, 
    hora_aper time not null,
    hora_cierra time not null,
	precios int not null,
    id_usuario int not null,
    primary key (id_lugar),
    foreign key (id_usuario) references usuario (id_usuario)
);

create table alerta(
	id_alerta int not null,
    tipo_aler varchar (255) not null,
    fecha_alerta date not null,
    id_lugar int not null,
    primary key (id_alerta),
    foreign key (id_lugar) references lugar (id_lugar)
);

create table rutas(
	 id_ruta int auto_increment not null,
	inicio_ruta varchar (50) not null,
    fin_ruta varchar (50) not null, 
    id_lugar int not null,
    primary key (id_ruta),
	foreign key (id_lugar) references lugar (id_lugar)
);