DROP TABLE Autor
;
DROP TABLE calificacion
;
DROP TABLE catalogo
;
DROP TABLE comentario
;
DROP TABLE contadorVisitas
;
DROP TABLE director
;
DROP TABLE director
;
DROP TABLE disciplina
;
DROP TABLE documentoMultimedia
;
DROP TABLE entidadFederativa
;
DROP TABLE especie
;
DROP TABLE gradoAcademico
;
DROP TABLE institucion
;
DROP TABLE pais
;
DROP TABLE permiso
;
DROP TABLE persona
;
DROP TABLE profesion
;
DROP TABLE rol
;
DROP TABLE subdisciplina
;
DROP TABLE sugerencia
;
DROP TABLE tesis
;
DROP TABLE usuario
;
DROP TABLE usuario
;

CREATE TABLE Autor ( 
	idAutor INTEGER NOT NULL,
	fechaDebut DATE NOT NULL,
	idGradoAcademico INTEGER,
	idInstitucion INTEGER,
	idPersona INTEGER,
	idProfesion INTEGER,
	nombreArtistico VARCHAR(50)
)
;

CREATE TABLE calificacion ( 
	idCalificacion INTEGER NOT NULL,
	comentarios VARCHAR(255),
	fechaCreacion DATE,
	calificacion INTEGER NOT NULL,
	idTesis INTEGER,
	idUsuario INTEGER
)
;

CREATE TABLE catalogo ( 
	idCatalogo INTEGER NOT NULL,
	idCategoria INTEGER,
	nombre VARCHAR(100)
)
;

CREATE TABLE comentario ( 
	idComentario INTEGER NOT NULL,
	comentario VARCHAR(255) NOT NULL,
	fechaCreacion DATE NOT NULL,
	idTesis INTEGER,
	idUsuario INTEGER
)
;

CREATE TABLE contadorVisitas ( 
	idPais INTEGER,
	idTesis INTEGER,
	idUsuario INTEGER,
	tiempoVisita DATE
)
;

CREATE TABLE director ( 
	idDirector INTEGER NOT NULL,
	idInstitucion INTEGER,
	idGradoAcademico INTEGER,
	idPersona INTEGER
)
;

CREATE TABLE director ( 
	idDirector INTEGER NOT NULL
)
;

CREATE TABLE disciplina ( 
	idDisciplina INTEGER NOT NULL,
	nombre VARCHAR(50)
)
;

CREATE TABLE documentoMultimedia ( 
	idDocumento INTEGER NOT NULL,
	idTesis INTEGER,
	nombre VARCHAR(50),
	url VARCHAR(100)
)
;

CREATE TABLE entidadFederativa ( 
	idEntidadFederativa INTEGER NOT NULL,
	nombre VARCHAR(70)
)
;

CREATE TABLE especie ( 
	idEspecie INTEGER NOT NULL,
	nombre VARCHAR(100)
)
;

CREATE TABLE gradoAcademico ( 
	idGradoAcademico INTEGER NOT NULL,
	nombre VARCHAR(50)
)
;

CREATE TABLE institucion ( 
	idInstitucion INTEGER NOT NULL,
	nombre VARCHAR(100)
)
;

CREATE TABLE pais ( 
	idPais INTEGER NOT NULL,
	nombre VARCHAR(50)
)
;

CREATE TABLE permiso ( 
	idPermiso INTEGER NOT NULL,
	nombre VARCHAR(50),
	crear INTEGER,
	editar INTEGER,
	eliminar INTEGER,
	buscar INTEGER
)
;

CREATE TABLE persona ( 
	idPersona INTEGER NOT NULL,
	nombre VARCHAR(100),
	apellidos VARCHAR(100),
	fechaNacimiento DATE,
	idEntidadFederativa INTEGER,
	idPais INTEGER
)
;

CREATE TABLE profesion ( 
	idProfesion INTEGER NOT NULL,
	nombre VARCHAR(100)
)
;

CREATE TABLE rol ( 
	idRol INTEGER NOT NULL,
	nombre VARCHAR(50),
	idPermiso INTEGER
)
;

CREATE TABLE subdisciplina ( 
	idSubdisciplina INTEGER NOT NULL,
	nombre VARCHAR(50),
	idDisciplina INTEGER
)
;

CREATE TABLE sugerencia ( 
	idSugerencia INTEGER NOT NULL,
	sugerencia VARCHAR(255) NOT NULL,
	fechaCreacion DATE NOT NULL,
	idUsuario INTEGER
)
;

CREATE TABLE tesis ( 
	idTesis INTEGER NOT NULL,
	titulo VARCHAR(100),
	anio INTEGER,
	condiciones VARCHAR(50),
	idDirector INTEGER,
	idDisciplina INTEGER,
	idEntidadFederativa INTEGER,
	idEspecie INTEGER,
	idGradoAcademico INTEGER,
	idInstitucion INTEGER,
	idPais INTEGER,
	idSubdisciplina INTEGER
)
;

CREATE TABLE usuario ( 
	idUsuario INTEGER NOT NULL,
	fechaRegistro DATE,
	idPersona INTEGER,
	idRol INTEGER
)
;

CREATE TABLE usuario ( 
	idUsuario INTEGER NOT NULL
)
;


ALTER TABLE Autor ADD CONSTRAINT PK_Autor 
	PRIMARY KEY (idAutor)
;


ALTER TABLE calificacion ADD CONSTRAINT PK_calificacion 
	PRIMARY KEY (idCalificacion)
;


ALTER TABLE catalogo ADD CONSTRAINT PK_catalogo 
	PRIMARY KEY (idCatalogo)
;


ALTER TABLE comentario ADD CONSTRAINT PK_comentario 
	PRIMARY KEY (idComentario)
;


ALTER TABLE director ADD CONSTRAINT PK_director 
	PRIMARY KEY (idDirector)
;


ALTER TABLE director ADD CONSTRAINT PK_director 
	PRIMARY KEY (idDirector)
;


ALTER TABLE disciplina ADD CONSTRAINT PK_disciplina 
	PRIMARY KEY (idDisciplina)
;


ALTER TABLE documentoMultimedia ADD CONSTRAINT PK_documentoMultimedia 
	PRIMARY KEY (idDocumento)
;


ALTER TABLE entidadFederativa ADD CONSTRAINT PK_entidadFederativa 
	PRIMARY KEY (idEntidadFederativa)
;


ALTER TABLE especie ADD CONSTRAINT PK_especie 
	PRIMARY KEY (idEspecie)
;


ALTER TABLE gradoAcademico ADD CONSTRAINT PK_gradoAcademico 
	PRIMARY KEY (idGradoAcademico)
;


ALTER TABLE institucion ADD CONSTRAINT PK_institucion 
	PRIMARY KEY (idInstitucion)
;


ALTER TABLE pais ADD CONSTRAINT PK_pais 
	PRIMARY KEY (idPais)
;


ALTER TABLE permiso ADD CONSTRAINT PK_permiso 
	PRIMARY KEY (idPermiso)
;


ALTER TABLE persona ADD CONSTRAINT PK_persona 
	PRIMARY KEY (idPersona)
;


ALTER TABLE profesion ADD CONSTRAINT PK_profesion 
	PRIMARY KEY (idProfesion)
;


ALTER TABLE rol ADD CONSTRAINT PK_rol 
	PRIMARY KEY (idRol)
;


ALTER TABLE subdisciplina ADD CONSTRAINT PK_subdisciplina 
	PRIMARY KEY (idSubdisciplina)
;


ALTER TABLE sugerencia ADD CONSTRAINT PK_sugerencia 
	PRIMARY KEY (idSugerencia)
;


ALTER TABLE tesis ADD CONSTRAINT PK_tesis 
	PRIMARY KEY (idTesis)
;


ALTER TABLE usuario ADD CONSTRAINT PK_usuario 
	PRIMARY KEY (idUsuario)
;


ALTER TABLE usuario ADD CONSTRAINT PK_tesis 
	PRIMARY KEY (idUsuario)
;




ALTER TABLE Autor ADD CONSTRAINT FK_Autor_gradoAcademico 
	FOREIGN KEY (idGradoAcademico) REFERENCES gradoAcademico (idGradoAcademico)
;

ALTER TABLE Autor ADD CONSTRAINT FK_Autor_institucion 
	FOREIGN KEY (idInstitucion) REFERENCES institucion (idInstitucion)
;

ALTER TABLE Autor ADD CONSTRAINT FK_Autor_persona 
	FOREIGN KEY (idPersona) REFERENCES persona (idPersona)
;

ALTER TABLE Autor ADD CONSTRAINT FK_Autor_profesion 
	FOREIGN KEY (idProfesion) REFERENCES profesion (idProfesion)
;

ALTER TABLE calificacion ADD CONSTRAINT FK_calificacion_tesis 
	FOREIGN KEY (idTesis) REFERENCES tesis (idTesis)
;

ALTER TABLE calificacion ADD CONSTRAINT FK_calificacion_usuario 
	FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
;

ALTER TABLE comentario ADD CONSTRAINT FK_comentario_tesis 
	FOREIGN KEY (idTesis) REFERENCES tesis (idTesis)
;

ALTER TABLE comentario ADD CONSTRAINT FK_comentario_usuario 
	FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
;

ALTER TABLE contadorVisitas ADD CONSTRAINT FK_contadorVisitas_pais 
	FOREIGN KEY (idPais) REFERENCES pais (idPais)
;

ALTER TABLE contadorVisitas ADD CONSTRAINT FK_contadorVisitas_tesis 
	FOREIGN KEY (idTesis) REFERENCES tesis (idTesis)
;

ALTER TABLE contadorVisitas ADD CONSTRAINT FK_contadorVisitas_usuario 
	FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
;

ALTER TABLE director ADD CONSTRAINT FK_director_persona 
	FOREIGN KEY (idPersona) REFERENCES persona (idPersona)
;

ALTER TABLE director ADD CONSTRAINT FK_director_gradoAcademico 
	FOREIGN KEY (idGradoAcademico) REFERENCES gradoAcademico (idGradoAcademico)
;

ALTER TABLE director ADD CONSTRAINT FK_director_institucion 
	FOREIGN KEY (idInstitucion) REFERENCES institucion (idInstitucion)
;

ALTER TABLE documentoMultimedia ADD CONSTRAINT FK_documentoMultimedia_tesis 
	FOREIGN KEY (idTesis) REFERENCES tesis (idTesis)
;

ALTER TABLE persona ADD CONSTRAINT FK_persona_pais 
	FOREIGN KEY (idPais) REFERENCES pais (idPais)
;

ALTER TABLE persona ADD CONSTRAINT FK_persona_entidadFederativa 
	FOREIGN KEY (idEntidadFederativa) REFERENCES entidadFederativa (idEntidadFederativa)
;

ALTER TABLE rol ADD CONSTRAINT FK_rol_permiso 
	FOREIGN KEY (idPermiso) REFERENCES permiso (idPermiso)
;

ALTER TABLE subdisciplina ADD CONSTRAINT FK_subdisciplina_disciplina 
	FOREIGN KEY (idDisciplina) REFERENCES disciplina (idDisciplina)
;

ALTER TABLE sugerencia ADD CONSTRAINT FK_sugerencia_usuario 
	FOREIGN KEY (idUsuario) REFERENCES usuario (idUsuario)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_subdisciplina 
	FOREIGN KEY (idSubdisciplina) REFERENCES subdisciplina (idSubdisciplina)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_especie 
	FOREIGN KEY (idEspecie) REFERENCES especie (idEspecie)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_disciplina 
	FOREIGN KEY (idDisciplina) REFERENCES disciplina (idDisciplina)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_director 
	FOREIGN KEY (idDirector) REFERENCES director (idDirector)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_entidadFederativa 
	FOREIGN KEY (idEntidadFederativa) REFERENCES entidadFederativa (idEntidadFederativa)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_gradoAcademico 
	FOREIGN KEY (idGradoAcademico) REFERENCES gradoAcademico (idGradoAcademico)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_institucion 
	FOREIGN KEY (idInstitucion) REFERENCES institucion (idInstitucion)
;

ALTER TABLE tesis ADD CONSTRAINT FK_tesis_pais 
	FOREIGN KEY (idPais) REFERENCES pais (idPais)
;

ALTER TABLE usuario ADD CONSTRAINT FK_usuario_rol 
	FOREIGN KEY (idRol) REFERENCES rol (idRol)
;

ALTER TABLE usuario ADD CONSTRAINT FK_usuario_persona 
	FOREIGN KEY (idPersona) REFERENCES persona (idPersona)
;
