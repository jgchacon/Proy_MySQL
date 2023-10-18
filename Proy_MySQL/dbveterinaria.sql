-- AQUI ESTARA EL SCRIPT PARA CREAR LA BASE DE DATOS --

-- TABLAS, ATRIBUTOS, ETC --


#veterinaria
#mysql
create database veterinaria;

#
use veterinaria;

#tabla
create table persona(
    ci int not null primary key,
    nombres varchar(50),
    apepaterno varchar(50),
    apematerno varchar(50),
    sexo varchar(1),
    fecha_de_nacimiento date,
    correo varchar(50),
    telefono varchar(15)
);

create table proveedor(
    id_Proveedor int not null primary key,
    nombreEmpresa varchar(50),
    telefono varchar(15),
    correo varchar(50)
);

create table dueño(
    ciDueño int not null primary key,
    direccion varchar(50),
    foreign key (ciDueño) references persona(ci)
);

create table medico(
    ciMedico int not null primary key,
    especialidad varchar(50),
    sueldo int,
    foreign key (ciMedico) references persona(ci)
);

create table producto(
    id_Producto int not null primary key,
    nombre varchar(150),
    descripcion varchar(150),
    precio decimal(5,2),
    stock int
);  

create table diagnostico(
    id_Diagnostico int not null primary key,
    fecha_de_diagnostico date,
    diagnostico varchar(150),
    tratamiento varchar(150),
    observaciones varchar(150)
);

create table mascota(
    idMascota int not null primary key,
    nombre varchar(50),
    especie varchar(50),
    raza varchar(50),
    fecha_de_nacimiento date,
    ciDueño int not null,
    foreign key (ciDueño) references persona(ci)
);

create table provee(
    id_Producto int not null,
    id_Proveedor int not null,
    cantidad int,
    foreign key (id_Producto) references producto(id_Producto),
    foreign key (id_Proveedor) references proveedor(id_Proveedor)
);

create table receta(
    id_Diagnostico int not null,
    id_Producto int not null,
    foreign key (id_Diagnostico) references diagnostico(id_Diagnostico),
    foreign key (id_Producto) references producto(id_Producto)
);

create table atiende(
    idMascota int not null,
    ciMedico int not null,
    foreign key (idMascota) references mascota(idMascota),
    foreign key (ciMedico) references medico(ciMedico)
);

create table asigna(
    idMascota int not null,
    ciMedico int not null,
    id_Diagnostico int not null,
    foreign key (idMascota) references mascota(idMascota),
    foreign key (ciMedico) references medico(ciMedico),
    foreign key (id_Diagnostico) references diagnostico(id_Diagnostico)
);



