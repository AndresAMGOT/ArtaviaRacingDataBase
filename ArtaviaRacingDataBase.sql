/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los telefonos por usaurio.
****************************************************************************************************************************************************************/  
CREATE TABLE "HR"."CREDENCIALESPORUSUARIO" 
(
    CREDENCIALID         VARCHAR2(20)         NOT NULL,
    CORREOELECTRONICO    VARCHAR2(50)         NOT NULL,
    CONTRASEÑA           VARCHAR2(500)        NOT NULL,
    ESCONTRASEÑATEMPORAL NUMBER(1)            NOT NULL,
    EDITADOPOR           VARCHAR2(10)         NOT NULL,
    HABILITADO           NUMBER(1)            NOT NULL,
    FECHACREACION        DATE                 NOT NULL
);

-- Agregar la restricción de llave primaria
ALTER TABLE "HR"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PK" PRIMARY KEY (CREDENCIALID);

-- Agregar la restricción de llave foránea a la tabla PERSONAL
ALTER TABLE "HR"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PERSONAL_FK" FOREIGN KEY (CREDENCIALID)
    REFERENCES "HR"."PERSONAL" (CREDENCIALID);

-- Agregar la restricción de llave foránea a la tabla CLIENTE
ALTER TABLE "HR"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_CLIENTE_FK" FOREIGN KEY (CREDENCIALID)
    REFERENCES "HR"."CLIENTE" (CREDENCIALID);
    
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
-- Agregar la restricción de clave foránea a CATEGORIAMENU
ALTER TABLE "HR"."MENU"
ADD CONSTRAINT "MENU_CATEGORIAMENU_FK" FOREIGN KEY (CATEGORIAMENUID)
    REFERENCES "HR"."CATEGORIAMENU" (CATEGORIAMENUID);

-- Agregar la restricción de clave foránea a MENUPADRE
ALTER TABLE "HR"."MENU"
ADD CONSTRAINT "MENU_MENUPADRE_FK" FOREIGN KEY (MENUPADREID)
    REFERENCES "HR"."MENU" (MENUID);

/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
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
-- Agregar la restricción de clave foránea a ROL
ALTER TABLE "HR"."MENUPORROL"
ADD CONSTRAINT "MENUPORROL_ROL_FK" FOREIGN KEY (ROLID)
    REFERENCES "HR"."ROL" (ROLID);

-- Agregar la restricción de clave foránea a MENU
ALTER TABLE "HR"."MENUPORROL"
ADD CONSTRAINT "MENUPORROL_MENU_FK" FOREIGN KEY (MENUID)
    REFERENCES "HR"."MENU" (MENUID);