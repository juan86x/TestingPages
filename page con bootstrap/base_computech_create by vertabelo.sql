-- tables
-- Table: Categoria
CREATE TABLE Categoria (
    id_categoria int NOT NULL,
    nombre varchar(40) NOT NULL,
    descripcion varchar(256) NOT NULL,
    CONSTRAINT Categoria_pk PRIMARY KEY (id_categoria)
);

-- Table: Noticia
CREATE TABLE Noticia (
    id_noticia int NOT NULL,
    titulo varchar(100) NOT NULL,
    descripcion varchar(256) NOT NULL,
    Categoria_id_categoria int NOT NULL,
    CONSTRAINT Noticia_pk PRIMARY KEY (id_noticia)
);

-- foreign keys
-- Reference: Noticia_Categoria (table: Noticia)
ALTER TABLE Noticia ADD CONSTRAINT Noticia_Categoria FOREIGN KEY Noticia_Categoria (Categoria_id_categoria)
    REFERENCES Categoria (id_categoria);
