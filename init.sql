CREATE TABLE IF NOT EXISTS usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NULL,
    edad INT NULL,
    created_at DATE NULL,
    updated_at DATE NULL,
    PRIMARY KEY (id)
);

INSERT INTO usuarios (nombre, edad, created_at, updated_at) VALUES 
('Juan Perez', 25, CURDATE(), CURDATE()),
('Maria Garcia', 30, CURDATE(), CURDATE());
