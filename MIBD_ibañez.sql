//tabal usuarios
CREATE TABLE usuario ( id_usuario INT NOT NULL AUTO_INCREMENT, 
username VARCHAR(16) NOT NULL, password VARCHAR(32) NOT NULL,
 Rol_idRol INT NOT NULL, 
INDEX fk_usuario_Rol_idx (Rol_idRol ASC), 
PRIMARY KEY (id_usuario), 
CONSTRAINT fk_usuario_Rol FOREIGN KEY (Rol_idRol) 
REFERENCES Rol (idRol) ON DELETE NO ACTION ON UPDATE NO ACTION ) 
ENGINE = InnoDB;
//tabla estudiante
CREATE TABLE estudiante (
  id_est INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  genero VARCHAR(45) NOT NULL,
  fech_nac VARCHAR(45) NOT NULL,
  usuario_id_usuario INT NOT NULL,
  PRIMARY KEY (id_est),
  INDEX fk_estudiante_usuario1_idx (usuario_id_usuario ASC),
  CONSTRAINT fk_estudiante_usuario1
    FOREIGN KEY (usuario_id_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
//tabla docente
CREATE TABLE docente (
  id_doc INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  usuario_id_usuario INT NOT NULL,
  PRIMARY KEY (id_doc),
  INDEX fk_docente_usuario1_idx (usuario_id_usuario ASC),
  CONSTRAINT fk_docente_usuario1
    FOREIGN KEY (usuario_id_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
//tabla inscripcion
CREATE TABLE inscripcion (
  id_inscrp INT NOT NULL AUTO_INCREMENT,
  materia VARCHAR(45) NOT NULL,
  sigla VARCHAR(45) NOT NULL,
  horario VARCHAR(45) NOT NULL,
  carrera VARCHAR(45) NOT NULL,
  estudiante_id_est INT NOT NULL,
  PRIMARY KEY (id_inscrp),
  INDEX fk_incripcion_estudiante1_idx (estudiante_id_est ASC),
  CONSTRAINT fk_inscripcion_estudiante1
    FOREIGN KEY (estudiante_id_est)
    REFERENCES estudiante (id_est)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;


