

CREATE TABLE manufacturer(
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(255) NOT NULL,
country VARCHAR(255),
foundation_year INT

);
-- Probar con UNIQUE en title para forzar excepción en controlador y lanzar un CONFLICT 409
CREATE TABLE product (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    price DOUBLE,
    quantity INT,
    active BOOLEAN,
    creation_date TIMESTAMP,
    manufacturer_id BIGINT,
    FOREIGN KEY(manufacturer_id) REFERENCES manufacturer(id)
);