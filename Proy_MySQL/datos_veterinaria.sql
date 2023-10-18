-- ACA SE HARA EL INSERT DE LOS DATOS DE CADA TABLA --


-- LUZ

#datos a insertar

#persona
insert into persona(ci, nombres, apepaterno, apematerno, sexo, fecha_de_nacimiento, correo, telefono) values
(2111111, 'Jose Juan', 'Rodriguez', 'Lopez', 'M', '1999-01-13', 'joseju_13@gmail.com', 73456077),
(2211161, 'Paulina', 'Torrelli', 'Salinas', 'F', '1996-02-29', 'paulis@gmail.com', 74846543),
(3215511, 'Christopher', 'Caronta', 'Flores', 'M', '1994-03-28', 'christ_caronta@gmail.com', 79462131),
(1321112, 'Nikita', 'Solares', 'Cruz', 'F', '1992-04-22', 'nikitasol7@gmail.com', 69977092),
(3216513, 'Joey', 'Jay', 'Jones', 'M', '1985-04-28', 'joey_j@gmail.com', 71932231),
(1328114, 'Jaime', 'Cruz', 'Justino', 'M', '2002-05-22', 'jaimitocruz@gmail.com', 76767678),
(4132111, 'Micaela', 'Kunta', 'Loza', 'F', '2000-05-26', 'mica_kunta@gmail.com', 78768773);
(2122121, 'Dilan', 'Romero', 'Lozano', 'M', '2003-07-16', 'dilan_r@gmail.com', 76167273);

#medico
insert into medico(ciMedico, especialidad, sueldo) values
(2111111, 'Oncología Veterinaria', 4000),
(2211161, 'Cirugia Veterinaria', 6000);
(3215511, 'Radiologia Veterinaria', 6000);
(3216513, 'Medicina Interna', 5000);

#dueño
insert into dueño(ciDueño, direccion) values
(1328114, 'Av. Jaimes Freyre'),
(4132111, 'Av. 16 de Julio'),
(2122121, 'Av. Costanera'),
(1321112, 'Av. Arce'),
(2211161, 'Calle comercio #132');

####-
#atiende
insert into atiende(idMascota, ciMedico) values
(22, 2111111),
(21, 2211161),
(23, 3215511),
(25, 3215511),
(24, 3216513);

#mascota
insert into mascota(idMascota, nombre, especie, raza, fecha_de_nacimiento, ciDueño) values
(22, 'sol', 'perro', 'sharpey', '2022-08-13', 1328114),
(21, 'mandarino', 'gato', 'mestizo', '2015-11-11', 4132111),
(23, 'milaneso', 'gato', 'mestizo', '2019-01-16', 2122121),
(24, 'indestrutible', 'gato', 'mestizo', '2019-02-24', 3215511),
(25, 'porkito', 'cobaya', 'coronet', '2021-06-13', 2211161);
####-

#asigna
insert into asigna(idMascota, ciMedico, id_Diagnostico) values
(23, 2111111, 204),
(21, 2211161, 202),
(25, 3215511, 203),
(24, 3216513, 201),
(22, 2111111, 200);

#diagnostico
insert into diagnostico(id_Diagnostico, fecha_de_diagnostico, diagnostico, tratamiento, observaciones) values
(200, '2023-02-14', 'Obesidad', 'Implementación de una dieta y programa de ejercicios', 'Cita de control en dos semanas'),
(201, '2023-03-13', 'Analisis', 'Extraccion de sangre', 'Los resultados seran entregados en 24 horas'),
(202, '2022-05-12', 'Resfriado', 'Tratamiento con antiviral', 'Dar medicamento dos veces al dia cada ocho horas'),
(203, '2022-06-17', 'Alergia', 'Se le dio antihistaminicos', 'El paciente volverá en una semana'),
(204, '2022-07-19', 'Dolor estomacal', 'Se le dio un laxante', 'El dueño debe observalo');
###-

#receta
insert into receta(id_Diagnostico, id_Producto) values
(201, 13),
(202, 11),
(200, 12),
(204, 14),
(200, 15);

#producto
insert into producto(id_Producto, nombre, descripcion, precio, stock) values
(11, 'Antiviral para gatos', 'Famciclovir', 70.99, 20),
(12, 'Pelota de goma', 'Pelota de goma para perros', 15.99, 15),
(13, 'Juguete de ratón', 'Juguete de peluche con sonido', 11.99, 75),
(14, 'Pasto para gatos', 'Semillas de trigo para plantar', 30.03, 10),
(15, 'Comida dietica para perro', 'Royal Canin Veterinary Diet 3kg', 124.99, 6);

#proveedor
insert into proveedor(id_Proveedor, nombreEmpresa, telefono, correo) values
(111, 'Animales a salvo', 76666557, 'animalesasalvo@gmail.com'),
(112, 'GatosDioses', 64443321, 'administracion@gatosdioses.es'),
(113, 'Patitas', 68912191, 'patitas@gmail.com'),
(114, 'ProtectoraRoedores', 22283347, 'protectora_roedores@gmail.com'),
(115, 'Cats and Dogs', 71230114, 'catsanddogs@hotmail.com');

#provee
insert into provee(id_Producto, id_Proveedor, cantidad) values
(11, 112, 30),
(12, 115, 110),
(13, 114, 100),
(14, 111, 60),
(15, 113, 20);


-- CARLOS

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