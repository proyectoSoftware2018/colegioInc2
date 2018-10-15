INSERT INTO curso (codCurso, nombre, estado) VALUES
('COM', 'COMUNICACIÓN', 0),
('MAT', 'MATÉMATICA', 0);


INSERT INTO grado (grado, estado) VALUES
('1 Grado', 0),
('2 Grado', 0),
('3 Grado', 0);


INSERT INTO profesor (usuario, nombre, apellido, direccion, ciudad, edad, telefonoCasa, telefonoMovil, correo, contraseña, estado) VALUES
('pro1', 'Islachin', 'Victor', 'Mz a lote 7 San francisco', 'Lima', 20, 7654564, 987656453, 'ja@h.com', '123', 0);



INSERT INTO seccion (seccion, estado) VALUES
('A', 0),
('B', 0);


INSERT INTO asignacion (cursod, profesord, grad, seccio, estado) VALUES
('COM', 'pro1', '1 Grado', 'A', 0);

INSERT INTO aula (gradog, secciong, usuarioP, cantMax, estado) VALUES
('1 Grado', 'A', 'pro1', 26, 0),
('2 Grado', 'A', 'pro1', 34, 0);


