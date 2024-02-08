/* Relación tipo 1:1 */
-- PASO 1
-- CREATE TABLE usuarios (
--    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
--    nombre VARCHAR(50) NOT NULL,
--    apellido VARCHAR(100) NOT NULL,
--    email VARCHAR(100) NOT NULL,
--    edad INT
-- );


-- PASO 2
-- CREATE TABLE roles (
--     id_rol INT AUTO_INCREMENT PRIMARY KEY,
--     nombre_rol VARCHAR(50) NOT NULL
-- );


-- PASO 3
-- ALTER TABLE usuarios ADD COLUMN id_rol INT;
-- UPDATE usuarios SET id_rol = FLOOR(RAND() * (4)) + 1;


-- PASO 4
-- SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol
-- FROM usuarios
-- JOIN roles on usuarios.id_rol = roles.id_rol
-- ORDER BY id_usuario


/* Relación tipo 1:N */
-- PASO 1
-- CREATE TABLE categorias (
--     id_categoria INT AUTO_INCREMENT PRIMARY KEY,
--     nombre_categoria VARCHAR(100) NOT NULL
-- );


-- PASO 2
-- ALTER TABLE usuarios ADD COLUMN id_categoria INT;


-- PASO 3
-- UPDATE usuarios SET id_categoria = FLOOR(RAND() * (10)) + 1;


-- PASO 4
-- SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria
-- FROM usuarios
-- JOIN roles ON usuarios.id_rol = roles.id_rol
-- JOIN categorias ON usuarios.id_categoria = categorias.id_categoria
-- ORDER BY id_usuario;

/* Relación tipo N:M */
-- PASO 1
-- CREATE TABLE usuarios_categorias (
--     id_usuario_categoria INT AUTO_INCREMENT PRIMARY KEY,
--     id_usuario INT,
--     id_categoria INT
-- );
-- ALTER TABLE usuarios_categorias ADD FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);
-- ALTER TABLE usuarios_categorias ADD FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria);


-- PASO 2
-- INSERT INTO usuarios_categorias (id_usuario, id_categoria) VALUES
-- (1, 1), (1, 2), (1, 3),
-- (2, 4), (2, 5),
-- (3, 6), (3, 7),
-- (4, 8), (4, 9), (4, 10);


-- PASO 3
-- SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria
-- FROM usuarios_categorias
-- JOIN usuarios ON usuarios_categorias.id_usuario = usuarios.id_usuario
-- JOIN categorias ON usuarios_categorias.id_categoria = categorias.id_categoria
-- JOIN roles ON usuarios.id_rol = roles.id_rol
-- ORDER BY id_usuario;
