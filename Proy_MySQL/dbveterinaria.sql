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

#datos a insertar

#persona
insert into persona(ci, nombres, apepaterno, apematerno, sexo, fecha_de_nacimiento, correo, telefono) values
(9111111, 'Juan Carlos', 'Perez', 'Lopez', 'M', '1996-03-03', 'aike_003@gmail.com', 77700077),
(8232343, 'Paola', 'Tito', '', 'F', '1998-05-20', 'paola.andrea@gmail.com', 63423571),
(9110555, 'Cristian', 'Cachi', 'Paucara', 'M', '1999-08-19', 'cris_icp@gmail.com', 79865111),
(8823456, 'Ninoska', 'Flores', 'Cruz', 'F', '1997-12-12', 'nino_oo7@gmail.com', 62398098),
(9111112, 'Marcia', 'Calle', 'Perez', 'F', '2000-03-03', 'marcia.street@gmail.com', 77700078);

#proveedor
insert into proveedor(id_Proveedor, nombreEmpresa, telefono, correo) values
(171, 'Petnatura de sanidad animal', 75678987, 'petnatura_animal@gmail.com'),
(172, 'moly', 67186814, 'administracion@moly.es'),
(173, 'AnimalMax', 67186814, ''),
(174, 'Nupi3', 2738987, 'nupie3_distribuidora@nupie3.com'),
(175, 'NutyPet', 77989814, 'producto_para_mascota@nutypet.com');

#producto
insert into producto(id_Producto, nombre, descripcion, precio, stock) values
(1, 'Pastilla antiparasitos', 'Pastillas antiparasitarias para perros de la marca Bayer, 6 tabletas', 26.98, 70),
(2, 'Spray anti pulgas y garrapatas', 'Spray anti pulgas y garrapatas para perros de la marca Frontline, 100 ml', 35.99, 45),
(3, 'Gotas para el oído', 'Gotas para el oído para perros de la marca Zymox, 30 ml', 21.99, 85),
(4, 'Collar antipulgas y garrapatas', 'Collar antipulgas y garrapatas para perros de la marca Seresto, duración de 8 meses', 57.98, 30),
(5, 'Suplementos de glucosamina', 'Suplementos de glucosamina para perros de la marca Nutramax, 60 tabletas', 34.99, 80);

#medico
insert into medico(ciMedico, especialidad, sueldo) values
(9111112, 'Oncología Veterinario', 4000),
(9110555, 'Medicina Interna', 5000);

#dueño
insert into dueño(ciDueño, direccion) values
(9110555, 'Villa copacabana'),
(9111111, 'Av. America #123'),
(9111112, 'Av. Bolivar #100'),
(8823456, 'Calle 20 de octubre #22'),
(8232343, 'Calle sucre #3');

#diagnostico
insert into diagnostico(id_Diagnostico, fecha_de_diagnostico, diagnostico, tratamiento, observaciones) values
(300, '2022-03-04', 'Obesidad', 'Implementación de una dieta y programa de ejercicios', 'El dueño debe monitorear el peso del paciente de manera regular'),
(301, '2022-03-03', 'Parasitosis', 'Tratamiento con antiparasitarios', 'El paciente debe volver en 1 mes para revisión'),
(302, '2022-03-02', 'Dermatitis alérgica', 'Tratamiento con antihistamínicos y cambio en la dieta', 'Se sugiere realizar pruebas de alergia para identificar el alérgeno'),
(303, '2022-03-07', 'Diabetes', 'Insulina y cambios en la dieta', 'El paciente necesita un seguimiento regular para controlar los niveles de azúcar en sangre'),
(304, '2022-03-09', 'Ansiedad', 'Terapia conductual, modificación del entorno y posiblemente medicación', 'El dueño debe seguir las pautas para minimizar el estrés del paciente');

#mascota
insert into mascota(idMascota, nombre, especie, raza, fecha_de_nacimiento, ciDueño) values
(10, 'luna', 'perro', 'labrador', '2019-03-03', 9111111),
(11, 'sulu', 'perro', 'rhodesian', '2017-10-10', 9111111),
(12, 'shira', 'perro', 'rhodesian', '2018-03-26', 9111111),
(13, 'kratos', 'perro', 'golden retriever', '2019-04-14', 8823456),
(14, 'linda', 'perro', 'golden retriever', '2019-05-23', 8823456);

#provee
insert into provee(id_Producto, id_Proveedor, cantidad) values
(1, 171, 100),
(2, 172, 200),
(3, 173, 80),
(4, 171, 120),
(5, 172, 50);

#receta
insert into receta(id_Diagnostico, id_Producto) values
(301, 1),
(301, 4),
(301, 2),
(303, 3),
(303, 5);

#atiende
insert into atiende(idMascota, ciMedico) values
(10, 9111112),
(11, 9111112),
(12, 9111112),
(13, 9110555),
(14, 9110555);

#asigna
insert into asigna(idMascota, ciMedico, id_Diagnostico) values
(10, 9111112, 304),
(11, 9111112, 303),
(12, 9111112, 302),
(13, 9110555, 301),
(14, 9110555, 300);

