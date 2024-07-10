/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del puesto de trabajo
****************************************************************************************************************************************************************/
CREATE TABLE "HR"."PUESTOTRABAJO" 
(	
     "PUESTOTRABAJOID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE 
    ,"PUESTO"           VARCHAR2(50 BYTE)        NOT NULL ENABLE 
    ,"DESCRIPCION"      VARCHAR2(250 BYTE)       NOT NULL ENABLE
    ,"EDITADOPOR"       VARCHAR2(10 BYTE)        NOT NULL ENABLE
    ,"HABILITADO"       NUMBER(1,0)              NOT NULL ENABLE
    ,"FECHACREACION"    DATE                     NOT NULL ENABLE
    ,PRIMARY KEY ("PUESTOTRABAJOID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE
) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del rol de los usaurios
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."ROL" 
(	
     "ROLID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE
	,"NOMBRE"            VARCHAR2(100 BYTE)     NOT NULL ENABLE
	,"DESCRIPCION"       VARCHAR2(250 BYTE)     NOT NULL ENABLE
	,"EDITADOPOR"        VARCHAR2(10 BYTE)      NOT NULL ENABLE
	,"HABILITADO"        NUMBER(1,0)            NOT NULL ENABLE
	,"FECHACREACION"     DATE                   NOT NULL ENABLE
    ,PRIMARY KEY ("ROLID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del personal
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."PERSONAL" 
(	
     "CREDENCIALID"      VARCHAR2(20 BYTE)         NOT NULL ENABLE 
	,"ROLID"             NUMBER                    NOT NULL ENABLE 
	,"NOMBRE"            VARCHAR2(80 BYTE)         NOT NULL ENABLE 
	,"PRIMERAPELLIDO"    VARCHAR2(80 BYTE)         NOT NULL ENABLE 
	,"SEGUNDOAPELLIDO"   VARCHAR2(80 BYTE)         NOT NULL ENABLE 
	,"FECHANACIMIENTO"   DATE                      NOT NULL ENABLE 
	,"CODTRABAJADOR"     VARCHAR2(10 BYTE)         NOT NULL ENABLE 
	,"FECHACONTRATACION" DATE                      NOT NULL ENABLE 
	,"PUESTOTRABAJOID"   NUMBER                    NOT NULL ENABLE 
	,"EDITADOPOR"        VARCHAR2(10 BYTE) 
	,"HABILITADO"        NUMBER(1,0)               NOT NULL ENABLE 
	,"FECHACREACION"     DATE                      NOT NULL ENABLE 
	,CONSTRAINT "PERSONAL_PK" PRIMARY KEY ("CREDENCIALID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "PERSONAL_ROL_FK" FOREIGN KEY ("ROLID")
	  REFERENCES "HR"."ROL" ("ROLID") ENABLE
) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del cliente
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."CLIENTE" 
(
    "CREDENCIALID"             VARCHAR2(20 BYTE)     NOT NULL ENABLE 
	,"ROLID"                   NUMBER                NOT NULL ENABLE
	,"NOMBRE"                  VARCHAR2(80 BYTE)     NOT NULL ENABLE
	,"PRIMERAPELLIDO"          VARCHAR2(80 BYTE)     NOT NULL ENABLE
	,"SEGUNDOAPELLIDO"         VARCHAR2(80 BYTE)     NOT NULL ENABLE
	,"FECHANACIMIENTO"         DATE                  NOT NULL ENABLE
	,"EDITADOPOR"              VARCHAR2(10 BYTE)     NOT NULL ENABLE
	,"HABILITADO" NUMBER(1,0) NOT NULL ENABLE
	,"FECHACREACION" DATE NOT NULL ENABLE
	, CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("CREDENCIALID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "CLIENTE_ROL_FK" FOREIGN KEY ("ROLID")
	  REFERENCES "HR"."ROL" ("ROLID") ENABLE
) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los diferentes tipos de categorias telefoncias.
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."CATEGORIATELEFONO" 
(
     "CATEGORIATELEFONOID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE
	,"TIPOTELEFONO" VARCHAR2(50 BYTE) NOT NULL ENABLE
	,"DESCRIPCION" VARCHAR2(250 BYTE) NOT NULL ENABLE 
	,"EDITADOPOR" VARCHAR2(10 BYTE) NOT NULL ENABLE
	,"HABILITADO" NUMBER(1,0) NOT NULL ENABLE
	,"FECHACREACION" DATE NOT NULL ENABLE
	,PRIMARY KEY ("CATEGORIATELEFONOID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE
) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los telefonos por usaurio.
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."TELEFONOPORUSUARIO" 
(	
     "NUMEROTELEFONO" VARCHAR2(10 BYTE) NOT NULL ENABLE 
	,"CREDENCIALID" VARCHAR2(20 BYTE) NOT NULL ENABLE
	,"CATEGORIATELEFONOID" NUMBER NOT NULL ENABLE 
	,"NUMEROEXTENSION" NUMBER(8,0) 
	,"DESCRIPCION" VARCHAR2(250 BYTE)
	,"EDITADOPOR" VARCHAR2(10 BYTE) NOT NULL ENABLE
	,"HABILITADO" NUMBER(1,0) NOT NULL ENABLE
	,"FECHACREACION" DATE NOT NULL ENABLE
	 CONSTRAINT "TELEFONOPORUSUARIO_PK" PRIMARY KEY ("NUMEROTELEFONO", "CREDENCIALID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "TELEFONOPORUSUARIO_CATEGORIATELEFONO_FK" FOREIGN KEY ("CATEGORIATELEFONOID")
	  REFERENCES "HR"."CATEGORIATELEFONO" ("CATEGORIATELEFONOID") ENABLE, 
	 CONSTRAINT "TELEFONOPORUSUARIO_PERSONAL_FK" FOREIGN KEY ("CREDENCIALID")
	  REFERENCES "HR"."PERSONAL" ("CREDENCIALID") ENABLE, 
	 CONSTRAINT "TELEFONOPORUSUARIO_CLIENTE_FK" FOREIGN KEY ("CREDENCIALID")
	  REFERENCES "HR"."CLIENTE" ("CREDENCIALID") ENABLE
) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los telefonos por usaurio.
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."CREDENCIALESPORUSUARIO" 
(
    CREDENCIALID         VARCHAR2(20)         NOT NULL,
    CORREOELECTRONICO    VARCHAR2(50)         NOT NULL,
    CONTRASE�A           VARCHAR2(500)        NOT NULL,
    ESCONTRASE�ATEMPORAL NUMBER(1)            NOT NULL,
    EDITADOPOR           VARCHAR2(10)         NOT NULL,
    HABILITADO           NUMBER(1)            NOT NULL,
    FECHACREACION        DATE                 NOT NULL
);

-- Agregar la restricci�n de llave primaria
ALTER TABLE "HR"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PK" PRIMARY KEY (CREDENCIALID);

-- Agregar la restricci�n de llave for�nea a la tabla PERSONAL
ALTER TABLE "HR"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PERSONAL_FK" FOREIGN KEY (CREDENCIALID)
    REFERENCES "HR"."PERSONAL" (CREDENCIALID);

-- Agregar la restricci�n de llave for�nea a la tabla CLIENTE
ALTER TABLE "HR"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_CLIENTE_FK" FOREIGN KEY (CREDENCIALID)
    REFERENCES "HR"."CLIENTE" (CREDENCIALID);
    
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de las categorias de los menus del sitio
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."CATEGORIAMENU"
(
    CATEGORIAMENUID  NUMBER(10)       NOT NULL,
    TIPOMENU         VARCHAR2(50)     NOT NULL,
    DESCRIPCION      VARCHAR2(250)    NOT NULL,
    EDITADOPOR       VARCHAR2(10)     NOT NULL,
    HABILITADO       NUMBER(1)        NOT NULL,
    FECHACREACION    DATE             NOT NULL,
    CONSTRAINT "CATEGORIAMENU_PK" PRIMARY KEY (CATEGORIAMENUID)
);
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del menu del sitio
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."MENU"
(
    MENUID             NUMBER              NOT NULL,
    CATEGORIAMENUID    NUMBER(10)          NOT NULL,
    MENUPADREID        NUMBER              NULL,
    NOMBRE             VARCHAR2(100)       NOT NULL,
    DESCRIPCION        VARCHAR2(250)       NOT NULL,
    NIVEL              NUMBER              NOT NULL,
    URL                VARCHAR2(250)       NOT NULL,
    ICONO              VARCHAR2(250)       NULL,
    EDITADOPOR         VARCHAR2(10)        NOT NULL,
    HABILITADO         NUMBER(1)           NOT NULL,
    FECHACREACION      DATE                NOT NULL,
    CONSTRAINT "MENU_PK" PRIMARY KEY (MENUID)
);
-- Agregar la restricci�n de clave for�nea a CATEGORIAMENU
ALTER TABLE "HR"."MENU"
ADD CONSTRAINT "MENU_CATEGORIAMENU_FK" FOREIGN KEY (CATEGORIAMENUID)
    REFERENCES "HR"."CATEGORIAMENU" (CATEGORIAMENUID);

-- Agregar la restricci�n de clave for�nea a MENUPADRE
ALTER TABLE "HR"."MENU"
ADD CONSTRAINT "MENU_MENUPADRE_FK" FOREIGN KEY (MENUPADREID)
    REFERENCES "HR"."MENU" (MENUID);

/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del menu por rol
****************************************************************************************************************************************************************/      
CREATE TABLE "HR"."MENUPORROL"
(
    ROLID           NUMBER              NOT NULL,
    MENUID          NUMBER              NOT NULL,
    EDITADOPOR      VARCHAR2(10)        NOT NULL,
    HABILITADO      NUMBER(1)           NOT NULL,
    FECHACREACION   DATE                NOT NULL,
    CONSTRAINT "MENUPORROL_PK" PRIMARY KEY (ROLID, MENUID)
);
-- Agregar la restricci�n de clave for�nea a ROL
ALTER TABLE "HR"."MENUPORROL"
ADD CONSTRAINT "MENUPORROL_ROL_FK" FOREIGN KEY (ROLID)
    REFERENCES "HR"."ROL" (ROLID);

-- Agregar la restricci�n de clave for�nea a MENU
ALTER TABLE "HR"."MENUPORROL"
ADD CONSTRAINT "MENUPORROL_MENU_FK" FOREIGN KEY (MENUID)
    REFERENCES "HR"."MENU" (MENUID);
    
    
    
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del Pais
****************************************************************************************************************************************************************/      
CREATE TABLE "HR"."PAIS"
(
    CODIGOPAIS      NUMBER          NOT NULL,
    NOMBRE          VARCHAR2(255)   NOT NULL,
    EDITADOPOR      VARCHAR2(10)    NOT NULL,
    HABILITADO      NUMBER(1)       NOT NULL,
    FECHACREACION   DATE            NOT NULL,
    CONSTRAINT "PAIS_PK" PRIMARY KEY (CODIGOPAIS)
);
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los estados del Pais
****************************************************************************************************************************************************************/  

CREATE TABLE "HR"."ESTADO"
(
    CODIGOESTADO   NUMBER          NOT NULL,
    CODIGOPAIS     NUMBER          NOT NULL,
    NOMBRE         VARCHAR2(255)   NOT NULL,
    EDITADOPOR     VARCHAR2(10)    NOT NULL,
    HABILITADO     NUMBER(1)       NOT NULL,
    FECHACREACION  DATE            NOT NULL,
    CONSTRAINT "ESTADO_PK" PRIMARY KEY (CODIGOESTADO)
);

ALTER TABLE "HR"."ESTADO"
ADD CONSTRAINT "ESTADO_FK_PAIS"
FOREIGN KEY (CODIGOPAIS) REFERENCES "HR"."PAIS" (CODIGOPAIS);
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los contados del Pais
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."CONDADO"
(
    CODIGOCONDADO  NUMBER          NOT NULL,
    CODIGOESTADO   NUMBER          NOT NULL,
    NOMBRE         VARCHAR2(255)   NOT NULL,
    EDITADOPOR     VARCHAR2(10)    NOT NULL,
    HABILITADO     NUMBER(1)       NOT NULL,
    FECHACREACION  DATE            NOT NULL,
    CONSTRAINT "CONDADO_PK" PRIMARY KEY (CODIGOCONDADO)
);

ALTER TABLE "HR"."CONDADO"
ADD CONSTRAINT "CONDADO_FK_ESTADO"
FOREIGN KEY (CODIGOESTADO) REFERENCES "HR"."ESTADO" (CODIGOESTADO);
/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del distrito.
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."DISTRITO"
(
    CODIGODISTRITO  NUMBER          NOT NULL,
    CODIGOCONDADO   NUMBER          NOT NULL,
    NOMBRE          VARCHAR2(255)   NOT NULL,
    EDITADOPOR      VARCHAR2(10)    NOT NULL,
    HABILITADO      NUMBER(1)       NOT NULL,
    FECHACREACION   DATE            NOT NULL,
    CONSTRAINT "DISTRITO_PK" PRIMARY KEY (CODIGODISTRITO)
);

ALTER TABLE "HR"."DISTRITO"
ADD CONSTRAINT "DISTRITO_FK_CONDADO"
FOREIGN KEY (CODIGOCONDADO) REFERENCES "HR"."CONDADO" (CODIGOCONDADO);

/****************************************************************************************************************************************************************
Autor: Jos� Andr�s Alvarado Matamoros
Requerimiento: AR-001
Fecha Creaci�n: 07/09/2024   (MM/dd/YYYY)
Enunciado: A partir de este punto se estar�n agregando los insert harcodeados para los diferentes catalogos.
****************************************************************************************************************************************************************/  
--Insert Tabla ROL
INSERT INTO "HR"."ROL" (NOMBRE, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES ('Administrador', 'Due�o del Sistema', '00000001', 1, SYSDATE);
INSERT INTO "HR"."ROL" (NOMBRE, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES ('Cliente', 'Cliente que adquiere nuestros servicios', '00000001', 1, SYSDATE);
-- SELECT * FROM  "HR"."ROL" -- 1= Administrador , 2 = Cliente

--Insert Tabla Pais
INSERT INTO "HR"."PAIS" (CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 'COSTA RICA', '00000001', 1, SYSDATE);

--Insert Provincias
INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 1, 'SAN JOS�', '00000001', 1, SYSDATE);

INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (2, 1, 'ALAJUELA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (3, 1, 'CARTAGO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (4, 1, 'HEREDIA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (5, 1, 'GUANACASTE', '00000001', 1, SYSDATE);

INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (6, 1, 'PUNTARENAS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (7, 1, 'LIM�N', '00000001', 1, SYSDATE);

-- Cantones de la provincia de San Jos�
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 1, 'SAN JOS�', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (2, 1, 'ESCAZ�', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (3, 1, 'DESAMPARADOS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (4, 1, 'PURISCAL', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (5, 1, 'TARRAZ�', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (6, 1, 'ASERR�', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (7, 1, 'MORA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (8, 1, 'GOICOECHEA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (9, 1, 'SANTA ANA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (10, 1, 'ALAJUELITA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (11, 1, 'VAZQUEZ DE CORONADO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (12, 1, 'ACOSTA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (13, 1, 'TIB�S', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (14, 1, 'MORAVIA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (15, 1, 'MONTES DE OCA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (16, 1, 'TURRUBARES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (17, 1, 'DOTA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (18, 1, 'CURRIDABAT', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (19, 1, 'P�REZ ZELED�N', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (20, 1, 'LE�N CORT�S', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Alajuela
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (21, 2, 'ALAJUELA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (22, 2, 'SAN RAM�N', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (23, 2, 'GRECIA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (24, 2, 'SAN MATEO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (25, 2, 'ATENAS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (26, 2, 'NARANJO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (27, 2, 'PALMARES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (28, 2, 'PO�S', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (29, 2, 'OROTINA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (30, 2, 'SAN CARLOS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (31, 2, 'ZARCERO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (32, 2, 'VALVERDE VEGA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (33, 2, 'UPALA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (34, 2, 'LOS CHILES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (35, 2, 'GUATUSO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Cartago
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (36, 3, 'CARTAGO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (37, 3, 'PARA�SO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (38, 3, 'LA UNI�N', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (39, 3, 'JIM�NEZ', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (40, 3, 'TURRIALBA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (41, 3, 'ALVARADO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (42, 3, 'OREAMUNO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (43, 3, 'EL GUARCO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Heredia
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (44, 4, 'HEREDIA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (45, 4, 'BARVA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (46, 4, 'SANTO DOMINGO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (47, 4, 'SANTA B�RBARA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (48, 4, 'SAN RAFAEL', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (49, 4, 'SAN ISIDRO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (50, 4, 'BEL�N', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (51, 4, 'FLORES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (52, 4, 'SAN PABLO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Guanacaste
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (53, 5, 'LIBERIA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (54, 5, 'NICOYA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (55, 5, 'SANTA CRUZ', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (56, 5, 'BAGACES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (57, 5, 'CARRILLO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (58, 5, 'CA�AS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (59, 5, 'ABANGARES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (60, 5, 'TILAR�N', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (61, 5, 'NANDAYURE', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (62, 5, 'LA CRUZ', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (63, 5, 'HOJANCHA', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Puntarenas
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (64, 6, 'PUNTARENAS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (65, 6, 'ESPARZA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (66, 6, 'BUENOS AIRES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (67, 6, 'MONTES DE ORO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (68, 6, 'OSA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (69, 6, 'QUEPOS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (70, 6, 'GOLFITO', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (71, 6, 'COTO BRUS', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (72, 6, 'PARRITA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (73, 6, 'CORREDORES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (74, 6, 'GARABITO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Lim�n
INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (75, 7, 'LIM�N', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (76, 7, 'POCOC�', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (77, 7, 'SIQUIRRES', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (78, 7, 'TALAMANCA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (79, 7, 'MATINA', '00000001', 1, SYSDATE);

INSERT INTO "HR"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (80, 7, 'GU�CIMO', '00000001', 1, SYSDATE);



