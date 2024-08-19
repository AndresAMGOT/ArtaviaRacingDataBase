/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del puesto de trabajo
****************************************************************************************************************************************************************/
CREATE TABLE "PUESTOTRABAJO" 
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
  TABLESPACE "USERS";
  
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del rol de los usaurios
****************************************************************************************************************************************************************/  
CREATE TABLE "ROL" 
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
CREATE TABLE "PERSONAL" 
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
	  REFERENCES "ROL" ("ROLID") ENABLE
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
CREATE TABLE "CLIENTE" 
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
	  REFERENCES "ROL" ("ROLID") ENABLE
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
CREATE TABLE "CATEGORIATELEFONO" 
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
CREATE TABLE "TELEFONOPORUSUARIO" 
(	
     "NUMEROTELEFONO" VARCHAR2(10 BYTE) NOT NULL ENABLE 
	,"CREDENCIALID" VARCHAR2(20 BYTE) NOT NULL ENABLE
	,"CATEGORIATELEFONOID" NUMBER NOT NULL ENABLE 
	,"NUMEROEXTENSION" NUMBER(8,0) 
	,"DESCRIPCION" VARCHAR2(250 BYTE)
	,"EDITADOPOR" VARCHAR2(10 BYTE) NOT NULL ENABLE
	,"HABILITADO" NUMBER(1,0) NOT NULL ENABLE
	,"FECHACREACION" DATE NOT NULL ENABLE
    , CONSTRAINT "TELEFONOPORUSUARIO_PK" PRIMARY KEY ("NUMEROTELEFONO", "CREDENCIALID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "TELEFONOPORUSUARIO_CATEGORIATELEFONO_FK" FOREIGN KEY ("CATEGORIATELEFONOID")
	  REFERENCES "CATEGORIATELEFONO" ("CATEGORIATELEFONOID")	 
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
CREATE TABLE "CREDENCIALESPORUSUARIO" 
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
ALTER TABLE "CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PK" PRIMARY KEY (CREDENCIALID);

    
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de las categorias de los menus del sitio
****************************************************************************************************************************************************************/  
CREATE TABLE "CATEGORIAMENU"
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
CREATE TABLE "MENU"
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
ALTER TABLE "MENU"
ADD CONSTRAINT "MENU_CATEGORIAMENU_FK" FOREIGN KEY (CATEGORIAMENUID)
    REFERENCES "CATEGORIAMENU" (CATEGORIAMENUID);

-- Agregar la restricción de clave foránea a MENUPADRE
ALTER TABLE "MENU"
ADD CONSTRAINT "MENU_MENUPADRE_FK" FOREIGN KEY (MENUPADREID)
    REFERENCES "MENU" (MENUID);

/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del menu por rol
****************************************************************************************************************************************************************/      
CREATE TABLE "MENUPORROL"
(
    ROLID           NUMBER              NOT NULL,
    MENUID          NUMBER              NOT NULL,
    EDITADOPOR      VARCHAR2(10)        NOT NULL,
    HABILITADO      NUMBER(1)           NOT NULL,
    FECHACREACION   DATE                NOT NULL,
    CONSTRAINT "MENUPORROL_PK" PRIMARY KEY (ROLID, MENUID)
);
-- Agregar la restricción de clave foránea a ROL
ALTER TABLE "MENUPORROL"
ADD CONSTRAINT "MENUPORROL_ROL_FK" FOREIGN KEY (ROLID)
    REFERENCES "ROL" (ROLID);

-- Agregar la restricción de clave foránea a MENU
ALTER TABLE "MENUPORROL"
ADD CONSTRAINT "MENUPORROL_MENU_FK" FOREIGN KEY (MENUID)
    REFERENCES "MENU" (MENUID);
    
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del Pais
****************************************************************************************************************************************************************/      
CREATE TABLE "PAIS"
(
    CODIGOPAIS      NUMBER          NOT NULL,
    NOMBRE          VARCHAR2(255)   NOT NULL,
    EDITADOPOR      VARCHAR2(10)    NOT NULL,
    HABILITADO      NUMBER(1)       NOT NULL,
    FECHACREACION   DATE            NOT NULL,
    CONSTRAINT "PAIS_PK" PRIMARY KEY (CODIGOPAIS)
);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los estados del Pais
****************************************************************************************************************************************************************/  

CREATE TABLE "ESTADO"
(
    CODIGOESTADO   NUMBER          NOT NULL,
    CODIGOPAIS     NUMBER          NOT NULL,
    NOMBRE         VARCHAR2(255)   NOT NULL,
    EDITADOPOR     VARCHAR2(10)    NOT NULL,
    HABILITADO     NUMBER(1)       NOT NULL,
    FECHACREACION  DATE            NOT NULL,
    CONSTRAINT "ESTADO_PK" PRIMARY KEY (CODIGOESTADO)
);

ALTER TABLE "ESTADO"
ADD CONSTRAINT "ESTADO_FK_PAIS"
FOREIGN KEY (CODIGOPAIS) REFERENCES "PAIS" (CODIGOPAIS);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los contados del Pais
****************************************************************************************************************************************************************/  
CREATE TABLE "CONDADO"
(
    CODIGOCONDADO  NUMBER          NOT NULL,
    CODIGOESTADO   NUMBER          NOT NULL,
    NOMBRE         VARCHAR2(255)   NOT NULL,
    EDITADOPOR     VARCHAR2(10)    NOT NULL,
    HABILITADO     NUMBER(1)       NOT NULL,
    FECHACREACION  DATE            NOT NULL,
    CONSTRAINT "CONDADO_PK" PRIMARY KEY (CODIGOCONDADO)
);

ALTER TABLE "CONDADO"
ADD CONSTRAINT "CONDADO_FK_ESTADO"
FOREIGN KEY (CODIGOESTADO) REFERENCES "ESTADO" (CODIGOESTADO);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del distrito.
****************************************************************************************************************************************************************/  
CREATE TABLE "DISTRITO"
(
    CODIGODISTRITO  NUMBER          NOT NULL,
    CODIGOCONDADO   NUMBER          NOT NULL,
    NOMBRE          VARCHAR2(255)   NOT NULL,
    EDITADOPOR      VARCHAR2(10)    NOT NULL,
    HABILITADO      NUMBER(1)       NOT NULL,
    FECHACREACION   DATE            NOT NULL,
    CONSTRAINT "DISTRITO_PK" PRIMARY KEY (CODIGODISTRITO)
);

ALTER TABLE "DISTRITO"
ADD CONSTRAINT "DISTRITO_FK_CONDADO"
FOREIGN KEY (CODIGOCONDADO) REFERENCES "CONDADO" (CODIGOCONDADO);


/****************************************************************************************************************************************************************  
Creacion de la tabla: CategoriaServicio
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena los servicios especificos
****************************************************************************************************************************************************************/  
CREATE TABLE CATEGORIASERVICIO (
    CATEGORIASERVICIOID     NUMBER          PRIMARY KEY NOT NULL,
    NOMBRE                  VARCHAR2(50)    NOT NULL,
    DESCRIPCION             VARCHAR2(250)   NULL,
    EDITADOPOR              VARCHAR2(10)    NOT NULL,
    HABILITADO              NUMBER(1)       NOT NULL,
    FECHACREACION           DATE            NOT NULL
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: CategoriaProducto
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena las categorias de los productos
****************************************************************************************************************************************************************/  
CREATE TABLE CATEGORIAPRODUCTO (
    CATEGORIAPRODUCTOID    NUMBER          PRIMARY KEY NOT NULL,
    NOMBRE                 VARCHAR2(255)   NOT NULL,
    DESCRIPCION            VARCHAR2(250)   NULL,
    EDITADOPOR             VARCHAR2(10)    NOT NULL,
    HABILITADO             NUMBER(1)       NOT NULL,
    FECHACREACION          DATE            NOT NULL
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: DireccionPorUsuario
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena la dirrecion del usuario
****************************************************************************************************************************************************************/  
CREATE TABLE DIRECCIONPORUSUARIO (
    CREDENCIALID        VARCHAR2(20) PRIMARY KEY NOT NULL,
    CODIGOPAIS          NUMBER NOT NULL,
    CODIGOESTADO        NUMBER NOT NULL,
    CODIGOCONDADO       NUMBER NOT NULL,
    CODIGODISTRITO      NUMBER NOT NULL,
    DESCRIPCION         VARCHAR2(250) NOT NULL,
    EDITADOPOR          VARCHAR2(10) NOT NULL,
    HABILITADO          NUMBER(1) NOT NULL,
    FECHACREACION       DATE NOT NULL,
    FOREIGN KEY (CODIGOPAIS) REFERENCES PAIS(CODIGOPAIS),
    FOREIGN KEY (CODIGOESTADO) REFERENCES ESTADO(CODIGOESTADO),
    FOREIGN KEY (CODIGOCONDADO) REFERENCES CONDADO(CODIGOCONDADO),
    FOREIGN KEY (CODIGODISTRITO) REFERENCES DISTRITO(CODIGODISTRITO)
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: Servicio
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena los servicios del taller
****************************************************************************************************************************************************************/  
CREATE TABLE SERVICIO (
    SERVICIOID              NUMBER PRIMARY KEY NOT NULL,
    CATEGORIASERVICIOID     NUMBER NOT NULL,
    NOMBRE                  VARCHAR2(80) NOT NULL,
    DESCRIPCION             VARCHAR2(250) NULL,
    PRECIO                  NUMBER NOT NULL,
    TIEMPOSERVICIO          NUMBER NOT NULL,
    EDITADOPOR              VARCHAR2(10) NOT NULL,
    HABILITADO              NUMBER(1) NOT NULL,
    FECHACREACION           DATE NOT NULL,
    FOREIGN KEY (CATEGORIASERVICIOID) REFERENCES CATEGORIASERVICIO(CATEGORIASERVICIOID)
);
/****************************************************************************************************************************************************************/  

/****************************************************************************************************************************************************************  
Creacion de la tabla: EstadoCita
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena el estado de la cita
****************************************************************************************************************************************************************/  
CREATE TABLE ESTADOCITA (
    ESTADOCITAID     NUMBER(10) PRIMARY KEY NOT NULL,
    ESTADO           VARCHAR2(50) NOT NULL,
    DESCRIPCION      VARCHAR2(250) NOT NULL,
    EDITADOPOR       VARCHAR2(10) NOT NULL,
    HABILITADO       NUMBER(1) NOT NULL,
    FECHACREACION    DATE NOT NULL
);

/****************************************************************************************************************************************************************  
Creacion de la tabla: Vehiculo
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena los vehiculos
****************************************************************************************************************************************************************/  
CREATE TABLE VEHICULO (
    PLACAVEHICULOID  VARCHAR2(20) PRIMARY KEY NOT NULL,
    VIN              VARCHAR2(50) NOT NULL,
    MARCA            VARCHAR2(80) NOT NULL,
    MODELO           VARCHAR2(80) NOT NULL,
    AÑO              NUMBER NOT NULL,
    COLOR            VARCHAR2(80) NOT NULL,
    ALDIA            NUMBER(1) NULL,
    TITULOPROPIEDAD  BLOB NULL,
    HABILITADO       NUMBER(1) NOT NULL,
    FECHACREACION    DATE NOT NULL
);

/*
SELECT CONSTRAINT_NAME, TABLE_NAME
FROM USER_CONSTRAINTS
WHERE R_CONSTRAINT_NAME IN (
    SELECT CONSTRAINT_NAME
    FROM USER_CONSTRAINTS
    WHERE TABLE_NAME = 'VEHICULO' AND CONSTRAINT_TYPE = 'P'
) AND CONSTRAINT_TYPE = 'R';

ALTER TABLE CITAS DROP CONSTRAINT SYS_C007663;

ALTER TABLE VEHICULOPORCLIENTE DROP CONSTRAINT SYS_C007615;

DROP TABLE VEHICULO;
*/

/****************************************************************************************************************************************************************  
Creacion de la tabla: Citas
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena las citas

*Modificaciones*
Autor: Horacio Porras Marín
Id Requirement: AR-003 
Creation Date: 11/08/2024   (MM/dd/YYYY)
Information: Cambio de Type en HORAAGENDADA y HORAFINALIZACION. CITAID ahora es auto-incrementable.
****************************************************************************************************************************************************************/  
CREATE TABLE CITAS (
    CITAID              NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY NOT NULL,
    CREDENCIALID        VARCHAR2(20)    NOT NULL,
    PLACAVEHICULOID     VARCHAR2(20)    NOT NULL,
    VIN                 VARCHAR2(50)    NULL,
    SERVICIOID          NUMBER(10)      NOT NULL,
    ESTADOCITAID        NUMBER(10)      NOT NULL,
    FECHAAGENDADA       DATE            NOT NULL,
    DESCRIPCION         VARCHAR2(250)   NULL,
    HORAAGENDADA        VARCHAR2(20)    NOT NULL,
    HORAFINALIZACION    VARCHAR2(20)    NULL,
    EDITADOPOR          VARCHAR2(10)    NOT NULL,
    HABILITADO          NUMBER(1)       NOT NULL,
    FECHACREACION       DATE            NOT NULL,
    FOREIGN KEY (CREDENCIALID)    REFERENCES CLIENTE(CREDENCIALID),
    FOREIGN KEY (PLACAVEHICULOID) REFERENCES VEHICULO(PLACAVEHICULOID),
    FOREIGN KEY (SERVICIOID)      REFERENCES SERVICIO(SERVICIOID),
    FOREIGN KEY (ESTADOCITAID)    REFERENCES ESTADOCITA(ESTADOCITAID)
);

/*
Comandos para corregir la tabla CITAS

SELECT CONSTRAINT_NAME, TABLE_NAME
FROM USER_CONSTRAINTS
WHERE R_CONSTRAINT_NAME IN (
    SELECT CONSTRAINT_NAME
    FROM USER_CONSTRAINTS
    WHERE TABLE_NAME = 'CITAS' AND CONSTRAINT_TYPE = 'P'
) AND CONSTRAINT_TYPE = 'R';

ALTER TABLE DIAGNOSTICO DROP CONSTRAINT SYS_C007623;

DROP TABLE CITAS;
*/

/****************************************************************************************************************************************************************  
Creacion de la tabla: VehiculoPorCliente
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena la informacion de los vehiculos y su cliente
****************************************************************************************************************************************************************/  
CREATE TABLE VEHICULOPORCLIENTE (
    CREDENCIALID       VARCHAR2(20) NOT NULL,
    PLACAVEHICULO      VARCHAR2(20) NOT NULL,
    VIN                VARCHAR2(50) NOT NULL,
    EDITADOPOR         VARCHAR2(10) NOT NULL,
    HABILITADO         NUMBER(1) NOT NULL,
    FECHACREACION      DATE NOT NULL,
    PRIMARY KEY (VIN),
    FOREIGN KEY (CREDENCIALID) REFERENCES CLIENTE(CREDENCIALID),
    FOREIGN KEY (PLACAVEHICULO) REFERENCES VEHICULO(PLACAVEHICULOID)
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: Diagnostico
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena la informacion de los diagnosticos
****************************************************************************************************************************************************************/  
CREATE TABLE DIAGNOSTICO (
    DIAGNOSTICOID       NUMBER PRIMARY KEY NOT NULL,
    CITAID              NUMBER NOT NULL,
    DESCRIPCION         VARCHAR2(250) NULL,
    CODTRABAJADOR       VARCHAR2(10) NOT NULL,
    EDITADOPOR          VARCHAR2(10) NOT NULL,
    HABILITADO          NUMBER(1) NOT NULL,
    FECHACREACION       DATE NOT NULL,
    FOREIGN KEY (CITAID) REFERENCES CITAS(CITAID)
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: ServiciosPorDiagnostico
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena la relación entre diagnósticos y servicios
****************************************************************************************************************************************************************/  
CREATE TABLE SERVICIOSPORDIAGNOSTICO (
    DIAGNOSTICOID       NUMBER NOT NULL,
    SERVICIOID          NUMBER NOT NULL,
    EDITADOPOR          VARCHAR2(10) NOT NULL,
    HABILITADO          NUMBER(1) NOT NULL,
    FECHACREACION       DATE NOT NULL,
    PRIMARY KEY (SERVICIOID),
    FOREIGN KEY (DIAGNOSTICOID) REFERENCES DIAGNOSTICO(DIAGNOSTICOID),
    FOREIGN KEY (SERVICIOID) REFERENCES SERVICIO(SERVICIOID)
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: Producto
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena los datos del producto
****************************************************************************************************************************************************************/  
CREATE TABLE PRODUCTO (
    PRODUCTOID NUMBER GENERATED ALWAYS AS IDENTITY
    (START WITH 1 INCREMENT BY 1) NOT NULL,
    CATEGORIAPRODUCTOID NUMBER NOT NULL,
    NOMBRE VARCHAR2(80 BYTE) NOT NULL,
    DESCRIPCION VARCHAR2(250 BYTE),
    PRECIOUNITARIO NUMBER NOT NULL,
    CANTIDAD NUMBER NOT NULL,
    EDITADOPOR VARCHAR2(10 BYTE) NOT NULL,
    HABILITADO NUMBER(1,0) NOT NULL,
    FECHACREACION DATE NOT NULL,
    IMAGEN BLOB,
    PRIMARY KEY (PRODUCTOID),
    FOREIGN KEY (CATEGORIAPRODUCTOID) REFERENCES CATEGORIAPRODUCTO (CATEGORIAPRODUCTOID)
);

/*
SELECT CONSTRAINT_NAME, TABLE_NAME
FROM USER_CONSTRAINTS
WHERE R_CONSTRAINT_NAME IN (
    SELECT CONSTRAINT_NAME
    FROM USER_CONSTRAINTS
    WHERE TABLE_NAME = 'PRODUCTO' AND CONSTRAINT_TYPE = 'P'
) AND CONSTRAINT_TYPE = 'R';

ALTER TABLE PRODUCTOPORDIAGNOSTICO DROP CONSTRAINT SYS_C0013083;

DROP TABLE PRODUCTO;
*/

/****************************************************************************************************************************************************************  
Creacion de la tabla: ProductoPorDiagnostico
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena la relación entre diagnósticos y productos
****************************************************************************************************************************************************************/  
CREATE TABLE PRODUCTOPORDIAGNOSTICO (
    DIAGNOSTICOID   NUMBER          NOT NULL,
    PRODUCTOID      NUMBER          NOT NULL,
    CANTIDAD        NUMBER          NOT NULL,
    EDITADOPOR      VARCHAR2(10)    NOT NULL,
    HABILITADO      NUMBER(1)       NOT NULL,
    FECHACREACION   DATE            NOT NULL,
    PRIMARY KEY (PRODUCTOID),
    FOREIGN KEY (DIAGNOSTICOID) REFERENCES DIAGNOSTICO(DIAGNOSTICOID),
    FOREIGN KEY (PRODUCTOID)    REFERENCES PRODUCTO(PRODUCTOID)
);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: A partir de este punto se estarán agregando los insert harcodeados para los diferentes catalogos.
****************************************************************************************************************************************************************/  
--Insert Tabla ROL
INSERT INTO "ROL" (NOMBRE, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES ('Administrador', 'Dueño del Sistema', '00000001', 1, SYSDATE);
INSERT INTO "ROL" (NOMBRE, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES ('Cliente', 'Cliente que adquiere nuestros servicios', '00000001', 1, SYSDATE);
-- SELECT * FROM  "ROL" -- 1= Administrador , 2 = Cliente
--Insert PUESTO 
INSERT INTO PUESTOTRABAJO (
    PUESTO,
    DESCRIPCION,
    EDITADOPOR,
    HABILITADO,
    FECHACREACION
) VALUES (
    'Admin',                -- Valor para PUESTO
    'N/A', -- Valor para DESCRIPCION
    '00000001',                        -- Valor para EDITADOPOR
    1,                             -- Valor para HABILITADO
    SYSDATE                         -- Valor para FECHACREACION
);
--SELECT * FROM  "PUESTOTRABAJO" 
--Insert Tabla Personal como administrador 
INSERT INTO PERSONAL (
        CREDENCIALID,
        ROLID,
        NOMBRE,
        PRIMERAPELLIDO,
        SEGUNDOAPELLIDO,
        FECHANACIMIENTO,
        CODTRABAJADOR,
        FECHACONTRATACION,
        PUESTOTRABAJOID,
        EDITADOPOR,
        HABILITADO,
        FECHACREACION
    ) VALUES (
        '000000001',                      -- Valor para CREDENCIALID
        1,                             -- Valor para ROLID
        'Admin',                         -- Valor para NOMBRE
        'N/A',                        -- Valor para PRIMERAPELLIDO
        'N/A',                        -- Valor para SEGUNDOAPELLIDO
        SYSDATE, -- Valor para FECHANACIMIENTO
        'N/A',                      -- Valor para CODTRABAJADOR
        SYSDATE,                        -- Valor para FECHACONTRATACION
        1,                             -- Valor para PUESTOTRABAJOID
        '00000001',                        -- Valor para EDITADOPOR (opcional)
        1,                             -- Valor para HABILITADO
        SYSDATE                         -- Valor para FECHACREACION
    );
--SELECT * FROM  "PERSONAL" 
--Insert Tabla Pais
INSERT INTO "PAIS" (CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 'COSTA RICA', '00000001', 1, SYSDATE);

--Insert Provincias
INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 1, 'SAN JOSÉ', '00000001', 1, SYSDATE);

INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (2, 1, 'ALAJUELA', '00000001', 1, SYSDATE);

INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (3, 1, 'CARTAGO', '00000001', 1, SYSDATE);

INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (4, 1, 'HEREDIA', '00000001', 1, SYSDATE);

INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (5, 1, 'GUANACASTE', '00000001', 1, SYSDATE);

INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (6, 1, 'PUNTARENAS', '00000001', 1, SYSDATE);

INSERT INTO "ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (7, 1, 'LIMÓN', '00000001', 1, SYSDATE);

-- Cantones de la provincia de San José
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 1, 'SAN JOSÉ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (2, 1, 'ESCAZÚ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (3, 1, 'DESAMPARADOS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (4, 1, 'PURISCAL', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (5, 1, 'TARRAZÚ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (6, 1, 'ASERRÍ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (7, 1, 'MORA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (8, 1, 'GOICOECHEA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (9, 1, 'SANTA ANA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (10, 1, 'ALAJUELITA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (11, 1, 'VAZQUEZ DE CORONADO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (12, 1, 'ACOSTA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (13, 1, 'TIBÁS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (14, 1, 'MORAVIA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (15, 1, 'MONTES DE OCA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (16, 1, 'TURRUBARES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (17, 1, 'DOTA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (18, 1, 'CURRIDABAT', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (19, 1, 'PÉREZ ZELEDÓN', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (20, 1, 'LEÓN CORTÉS', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Alajuela
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (21, 2, 'ALAJUELA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (22, 2, 'SAN RAMÓN', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (23, 2, 'GRECIA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (24, 2, 'SAN MATEO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (25, 2, 'ATENAS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (26, 2, 'NARANJO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (27, 2, 'PALMARES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (28, 2, 'POÁS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (29, 2, 'OROTINA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (30, 2, 'SAN CARLOS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (31, 2, 'ZARCERO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (32, 2, 'VALVERDE VEGA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (33, 2, 'UPALA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (34, 2, 'LOS CHILES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (35, 2, 'GUATUSO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Cartago
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (36, 3, 'CARTAGO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (37, 3, 'PARAÍSO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (38, 3, 'LA UNIÓN', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (39, 3, 'JIMÉNEZ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (40, 3, 'TURRIALBA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (41, 3, 'ALVARADO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (42, 3, 'OREAMUNO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (43, 3, 'EL GUARCO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Heredia
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (44, 4, 'HEREDIA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (45, 4, 'BARVA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (46, 4, 'SANTO DOMINGO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (47, 4, 'SANTA BÁRBARA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (48, 4, 'SAN RAFAEL', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (49, 4, 'SAN ISIDRO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (50, 4, 'BELÉN', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (51, 4, 'FLORES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (52, 4, 'SAN PABLO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Guanacaste
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (53, 5, 'LIBERIA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (54, 5, 'NICOYA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (55, 5, 'SANTA CRUZ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (56, 5, 'BAGACES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (57, 5, 'CARRILLO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (58, 5, 'CAÑAS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (59, 5, 'ABANGARES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (60, 5, 'TILARÁN', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (61, 5, 'NANDAYURE', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (62, 5, 'LA CRUZ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (63, 5, 'HOJANCHA', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Puntarenas
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (64, 6, 'PUNTARENAS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (65, 6, 'ESPARZA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (66, 6, 'BUENOS AIRES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (67, 6, 'MONTES DE ORO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (68, 6, 'OSA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (69, 6, 'QUEPOS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (70, 6, 'GOLFITO', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (71, 6, 'COTO BRUS', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (72, 6, 'PARRITA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (73, 6, 'CORREDORES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (74, 6, 'GARABITO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Limón
INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (75, 7, 'LIMÓN', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (76, 7, 'POCOCÍ', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (77, 7, 'SIQUIRRES', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (78, 7, 'TALAMANCA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (79, 7, 'MATINA', '00000001', 1, SYSDATE);

INSERT INTO "CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (80, 7, 'GUÁCIMO', '00000001', 1, SYSDATE);

--select * from "CONDADO";
-- Inserts para los distritos del cant?n Para?so
INSERT INTO "DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES  (1, 37, 'Paraiso', '00000001', 1, SYSDATE);
INSERT INTO "DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES    (2, 37, 'Santiago', '00000001', 1, SYSDATE);
INSERT INTO "DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES   (3, 37, 'Orosi', '00000001', 1, SYSDATE);
INSERT INTO "DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES   (4, 37, 'Cachi', '00000001', 1, SYSDATE);
select * from "DISTRITO";

--  Insert de la categoria del telefono. 
INSERT INTO "ARTAVIARACING"."CATEGORIATELEFONO" 
(
    "TIPOTELEFONO",
    "DESCRIPCION",
    "EDITADOPOR",
    "HABILITADO",
    "FECHACREACION"
) 
VALUES 
(
    'Móvil',                  -- Tipo de teléfono
    'Teléfono móvil personal', -- Descripción
    '00000001',                  -- Usuario que edita
    1,                        -- Habilitado (1 para habilitado, 0 para deshabilitado)
    SYSDATE                   -- Fecha de creación (actual)
);
INSERT INTO "ARTAVIARACING"."CATEGORIATELEFONO" 
(
    "TIPOTELEFONO",
    "DESCRIPCION",
    "EDITADOPOR",
    "HABILITADO",
    "FECHACREACION"
) 
VALUES 
(
    'Casa',                  -- Tipo de teléfono
    'Teléfono casa', -- Descripción
    '00000001',                  -- Usuario que edita
    1,                        -- Habilitado (1 para habilitado, 0 para deshabilitado)
    SYSDATE                   -- Fecha de creación (actual)
);
/****************************************************************************************************************************************************************  
Creacion de las vistas: Apartir de aqui estaran todas las vistas de la DB
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 17-07-24 DD-MM-YYYY
Enunciado de la vista: Creacion de las vistas
****************************************************************************************************************************************************************/  

/****************************************************************************************************************************************************************  
Creacion de la vista: ClientesCompletos
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: nos muestra todos los datos importantes del cliente
****************************************************************************************************************************************************************/  
CREATE VIEW vw_personal_detalle AS 
SELECT 
    p.CREDENCIALID,
    p.NOMBRE,
    p.PRIMERAPELLIDO,
    p.SEGUNDOAPELLIDO,
    p.FECHANACIMIENTO,
    p.CODTRABAJADOR,
    p.FECHACONTRATACION,
    p.EDITADOPOR,
    p.HABILITADO,
    p.FECHACREACION,
    r.NOMBRE AS ROL_NOMBRE,
    pt.PUESTO AS PUESTO_NOMBRE
FROM PERSONAL p
JOIN ROL r ON p.ROLID = r.ROLID
JOIN PUESTOTRABAJO pt ON p.PUESTOTRABAJOID = pt.PUESTOTRABAJOID;
  
/****************************************************************************************************************************************************************  
Creacion de la vista: ClientesDireccion
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: Esta vista muestra toda la dirrecion del cliente
****************************************************************************************************************************************************************/  
CREATE VIEW vw_clientes_con_direccion AS 
SELECT 
    c.CREDENCIALID,
    c.NOMBRE,
    c.PRIMERAPELLIDO,
    c.SEGUNDOAPELLIDO,
    c.FECHANACIMIENTO,
    d.DESCRIPCION AS DIRECCION
FROM CLIENTE c
JOIN DIRECCIONPORUSUARIO d ON c.CREDENCIALID = d.CREDENCIALID;

/****************************************************************************************************************************************************************  
Creacion de la vista: CitasDetalles
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: Esta vista muestra informacion del cliente y sus citas
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_citas_detalle AS 
SELECT 
    c.CITAID,
    c.FechaAgendada,
    c.Descripcion AS CITA_DESCRIPCION,
    c.HoraAgendada,
    c.HoraFinalizacion,
    cl.NOMBRE AS CLIENTE_NOMBRE,
    v.PLACAVEHICULOID,
    v.MARCA,
    v.MODELO
FROM CITAS c
JOIN CLIENTE cl ON c.CREDENCIALID = cl.CREDENCIALID
JOIN VEHICULO v ON c.PLACAVEHICULOID = v.PLACAVEHICULOID;
/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: Esta vista muestra todo el diagnostico
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_diagnosticos_detalle AS 
SELECT 
    d.DIAGNOSTICOID,
    d.DESCRIPCION AS DIAGNOSTICO_DESCRIPCION,
    d.CODTRABAJADOR,
    c.FechaAgendada,
    c.HoraAgendada,
    c.HoraFinalizacion,
    p.NOMBRE AS TRABAJADOR_NOMBRE
FROM DIAGNOSTICO d
JOIN CITAS c ON d.CITAID = c.CITAID
JOIN PERSONAL p ON d.CODTRABAJADOR = p.CODTRABAJADOR;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Vista encargada de devolver la informacion de los Paises
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_ObtenerPais AS
SELECT 
     CODIGOPAIS  
    ,NOMBRE      
FROM PAIS;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Vista encargada de devolver la informacion de los Estados  de un Paises
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_ObtenerEstado AS
SELECT 
     CODIGOESTADO  
    ,NOMBRE       
    ,CODIGOPAIS    
FROM ESTADO;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Vista encargada de devolver la informacion de los Condados de un Paises
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_ObtenerCondado AS
SELECT 
     CODIGOCONDADO  
    ,NOMBRE         
    ,CODIGOESTADO   
FROM CONDADO;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Vista encargada de devolver la informacion de los Paises
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_ObtenerDistritos AS
SELECT 
     CODIGODISTRITO  
    ,NOMBRE          
    ,CODIGOCONDADO   
FROM DISTRITO;

/****************************************************************************************************************************************************************  
Creacion de la vista: ProductosDetalle
Autor: Horacio Porras Marín
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Muestra toda la información del producto, incluyendo la categoria por nombre.
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_producto_detalle AS 
SELECT 
    p.PRODUCTOID,
    p.NOMBRE,
    p.DESCRIPCION,
    p.PRECIOUNITARIO,
    p.CANTIDAD,
    p.EDITADOPOR,
    p.HABILITADO,
    p.FECHACREACION,
    cp.NOMBRE AS CATEGORIA_NOMBRE
FROM PRODUCTO p
JOIN CATEGORIAPRODUCTO cp ON p.CATEGORIAPRODUCTOID = cp.CATEGORIAPRODUCTOID;

/****************************************************************************************************************************************************************  
Creacion de la vista: ServiciosDetalle
Autor: Horacio Porras Marín
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Muestra toda la información del servicio, incluyendo la categoria por nombre.
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_servicio_detalle AS 
SELECT 
    s.SERVICIOID,
    s.NOMBRE,
    s.DESCRIPCION,
    s.PRECIO,
    s.TIEMPOSERVICIO,
    s.EDITADOPOR,
    s.HABILITADO,
    s.FECHACREACION,
    cs.NOMBRE AS CATEGORIA_NOMBRE
FROM SERVICIO s
JOIN CATEGORIASERVICIO cs ON s.CATEGORIASERVICIOID = cs.CATEGORIASERVICIOID;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: Horacio Porras Marín
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Muestra la información de los vehiculos.
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_ObtenerVehiculo AS
SELECT 
     PLACAVEHICULOID  
    ,VIN       
    ,MARCA
    ,MODELO
    ,AÑO
    ,COLOR
    ,ALDIA
    ,TITULOPROPIEDAD
    ,HABILITADO
    ,FECHACREACION
FROM VEHICULO;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: Horacio Porras Marín
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Muestra la información de los puestos.
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW vw_ObtenerPuesto AS
SELECT 
     PUESTOTRABAJOID  
    ,PUESTO       
    ,DESCRIPCION
    ,EDITADOPOR
    ,HABILITADO
    ,FECHACREACION
FROM PUESTOTRABAJO;

/****************************************************************************************************************************************************************
***                                                 PROCEDIMIENTOS ALMACENADOS A PARTIR DE AQUI                                                               ***
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado encargado de obtener los paises desde base de datos
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE  USP_SeleccionarPaises (
    RespuestaPaises OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN RespuestaPaises FOR
    SELECT 
         CODIGOPAIS
        ,NOMBRE
    FROM vw_ObtenerPais;   
END;
/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado encargado de obtener los estados de los paises desde base de datos
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_SeleccionarEstados (
    CodigoPais IN NUMBER,
    RespuestaEstados OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN RespuestaEstados FOR
    SELECT 
        CODIGOESTADO,
        NOMBRE
    FROM Estado
    WHERE CODIGOPAIS = CodigoPais;
END USP_SeleccionarEstados;
/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado encargado de obtener los condados de los estados desde base de datos
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE  USP_SeleccionarCondado (
     CodigoEstado     IN  NUMBER
    ,RespuestaCondado OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN RespuestaCondado FOR
    SELECT 
         CODIGOCONDADO
        ,NOMBRE
    FROM vw_ObtenerCondado
    WHERE CODIGOESTADO = CodigoEstado;
END USP_SeleccionarCondado;
/

/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado encargado de obtener los condados de los estados desde base de datos
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE  USP_SeleccionarDistritos (
     CodigoCondado     IN  NUMBER
    ,RespuestaDistritos OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN RespuestaDistritos FOR
    SELECT 
         CODIGODISTRITO
        ,NOMBRE
    FROM vw_ObtenerDistritos
    WHERE CODIGOCONDADO = CodigoCondado;
END USP_SeleccionarDistritos;
/
 
 /****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Procedimiento encargado de almacenar la informacion de los clientes
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_RegistrarCliente (
    p_credencial_id       IN VARCHAR2,
    p_rol_id              IN NUMBER,
    p_nombre              IN VARCHAR2,
    p_primer_apellido     IN VARCHAR2,
    p_segundo_apellido    IN VARCHAR2,
    p_fecha_nacimiento    IN DATE,
    p_numero_telefono     IN VARCHAR2,
    p_categoria_telefono_id IN NUMBER,
    p_numero_extension    IN NUMBER DEFAULT NULL,
    p_descripcion         IN VARCHAR2 DEFAULT NULL,
    p_codigo_pais         IN NUMBER,
    p_codigo_estado       IN NUMBER,
    p_codigo_condado      IN NUMBER,
    p_codigo_distrito     IN NUMBER,
    p_descripcion_direccion IN VARCHAR2,
    p_correo_electronico  IN VARCHAR2,
    p_contrasena          IN VARCHAR2,
    p_es_contrasena_temporal IN NUMBER DEFAULT 0,
    p_editado_por         IN VARCHAR2 DEFAULT '000000001', 
    p_habilitado          IN NUMBER DEFAULT 1,
    p_fecha_creacion      IN DATE DEFAULT SYSDATE
) AS
BEGIN
    -- Inicia una transacción
    BEGIN
        -- Inserta en CLIENTE
        INSERT INTO CLIENTE (
            CREDENCIALID,
            ROLID,
            NOMBRE,
            PRIMERAPELLIDO,
            SEGUNDOAPELLIDO,
            FECHANACIMIENTO,
            EDITADOPOR,
            HABILITADO,
            FECHACREACION
        ) VALUES (
            p_credencial_id,
            p_rol_id,
            p_nombre,
            p_primer_apellido,
            p_segundo_apellido,
            p_fecha_nacimiento,
            p_editado_por,
            p_habilitado,
            p_fecha_creacion
        );

        -- Inserta en TELEFONOPORUSUARIO
        INSERT INTO TELEFONOPORUSUARIO (
            NUMEROTELEFONO,
            CREDENCIALID,
            CATEGORIATELEFONOID,
            NUMEROEXTENSION,
            DESCRIPCION,
            EDITADOPOR,
            HABILITADO,
            FECHACREACION
        ) VALUES (
            p_numero_telefono,
            p_credencial_id,
            p_categoria_telefono_id,
            p_numero_extension,
            p_descripcion,
            p_editado_por,
            p_habilitado,
            p_fecha_creacion
        );

        -- Inserta en DIRECCIONPORUSUARIO
        INSERT INTO DIRECCIONPORUSUARIO (
            CREDENCIALID,
            CODIGOPAIS,
            CODIGOESTADO,
            CODIGOCONDADO,
            CODIGODISTRITO,
            DESCRIPCION,
            EDITADOPOR,
            HABILITADO,
            FECHACREACION
        ) VALUES (
            p_credencial_id,
            p_codigo_pais,
            p_codigo_estado,
            p_codigo_condado,
            p_codigo_distrito,
            p_descripcion_direccion,
            p_editado_por,
            p_habilitado,
            p_fecha_creacion
        );

        -- Inserta en CREDENCIALESPORUSUARIO
        INSERT INTO CREDENCIALESPORUSUARIO (
            CREDENCIALID,
            CORREOELECTRONICO,
            CONTRASEÑA,
            ESCONTRASEÑATEMPORAL,
            EDITADOPOR,
            HABILITADO,
            FECHACREACION
        ) VALUES (
            p_credencial_id,
            p_correo_electronico,
            p_contrasena,
            p_es_contrasena_temporal,
            p_editado_por,
            p_habilitado,
            p_fecha_creacion
        );

        -- Confirma la transacción si todos los inserts son exitosos
        COMMIT;
    EXCEPTION
        -- Captura cualquier error y realiza rollback
        WHEN OTHERS THEN
            ROLLBACK;
            -- Muestra un mensaje genérico
            DBMS_OUTPUT.PUT_LINE('Se ha producido un error al intentar registrar los datos.');
            RAISE;
    END;
END USP_RegistrarCliente;
/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Procedimiento encargado de actualizar la informacion de los clientes
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_ActualizarCliente (
    -- Parámetros para CLIENTE
    p_credencial_id       IN VARCHAR2,
    p_rol_id              IN NUMBER DEFAULT NULL,
    p_nombre              IN VARCHAR2 DEFAULT NULL,
    p_primer_apellido     IN VARCHAR2 DEFAULT NULL,
    p_segundo_apellido    IN VARCHAR2 DEFAULT NULL,
    p_fecha_nacimiento    IN DATE DEFAULT NULL,
    p_editado_por         IN VARCHAR2 DEFAULT '000000001', -- Usuario administrador del sistema
    p_habilitado          IN NUMBER DEFAULT 1,
    p_fecha_creacion      IN DATE DEFAULT SYSDATE,

    -- Parámetros para TELEFONOPORUSUARIO
    p_numero_telefono     IN VARCHAR2 DEFAULT NULL,
    p_categoria_telefono_id IN NUMBER DEFAULT NULL,
    p_numero_extension    IN NUMBER DEFAULT NULL,
    p_descripcion         IN VARCHAR2 DEFAULT NULL,

    -- Parámetros para DIRECCIONPORUSUARIO
    p_codigo_pais         IN NUMBER DEFAULT NULL,
    p_codigo_estado       IN NUMBER DEFAULT NULL,
    p_codigo_condado      IN NUMBER DEFAULT NULL,
    p_codigo_distrito     IN NUMBER DEFAULT NULL,
    p_descripcion_direccion IN VARCHAR2 DEFAULT NULL,

    -- Parámetros para CREDENCIALESPORUSUARIO
    p_correo_electronico  IN VARCHAR2 DEFAULT NULL,
    p_contrasena          IN VARCHAR2 DEFAULT NULL,
    p_es_contrasena_temporal IN NUMBER DEFAULT NULL
) AS
BEGIN
    -- Inicia una transacción
    BEGIN
        -- Actualiza CLIENTE
        UPDATE CLIENTE
        SET
            ROLID = NVL(p_rol_id, ROLID),
            NOMBRE = NVL(p_nombre, NOMBRE),
            PRIMERAPELLIDO = NVL(p_primer_apellido, PRIMERAPELLIDO),
            SEGUNDOAPELLIDO = NVL(p_segundo_apellido, SEGUNDOAPELLIDO),
            FECHANACIMIENTO = NVL(p_fecha_nacimiento, FECHANACIMIENTO),
            EDITADOPOR = p_editado_por,
            HABILITADO = NVL(p_habilitado, HABILITADO),
            FECHACREACION = NVL(p_fecha_creacion, FECHACREACION)
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza TELEFONOPORUSUARIO
        UPDATE TELEFONOPORUSUARIO
        SET
            NUMEROTELEFONO = NVL(p_numero_telefono, NUMEROTELEFONO),
            CATEGORIATELEFONOID = NVL(p_categoria_telefono_id, CATEGORIATELEFONOID),
            NUMEROEXTENSION = NVL(p_numero_extension, NUMEROEXTENSION),
            DESCRIPCION = NVL(p_descripcion, DESCRIPCION),
            EDITADOPOR = p_editado_por,
            HABILITADO = NVL(p_habilitado, HABILITADO),
            FECHACREACION = NVL(p_fecha_creacion, FECHACREACION)
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza DIRECCIONPORUSUARIO
        UPDATE DIRECCIONPORUSUARIO
        SET
            CODIGOPAIS = NVL(p_codigo_pais, CODIGOPAIS),
            CODIGOESTADO = NVL(p_codigo_estado, CODIGOESTADO),
            CODIGOCONDADO = NVL(p_codigo_condado, CODIGOCONDADO),
            CODIGODISTRITO = NVL(p_codigo_distrito, CODIGODISTRITO),
            DESCRIPCION = NVL(p_descripcion_direccion, DESCRIPCION),
            EDITADOPOR = p_editado_por,
            HABILITADO = NVL(p_habilitado, HABILITADO),
            FECHACREACION = NVL(p_fecha_creacion, FECHACREACION)
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza CREDENCIALESPORUSUARIO
        UPDATE CREDENCIALESPORUSUARIO
        SET
            CORREOELECTRONICO = NVL(p_correo_electronico, CORREOELECTRONICO),
            CONTRASEÑA = NVL(p_contrasena, CONTRASEÑA),
            ESCONTRASEÑATEMPORAL = NVL(p_es_contrasena_temporal, ESCONTRASEÑATEMPORAL),
            EDITADOPOR = p_editado_por,
            HABILITADO = NVL(p_habilitado, HABILITADO),
            FECHACREACION = NVL(p_fecha_creacion, FECHACREACION)
        WHERE CREDENCIALID = p_credencial_id;

        -- Confirma la transacción si todas las actualizaciones son exitosas
        COMMIT;
    EXCEPTION
        -- Captura cualquier error y realiza rollback
        WHEN OTHERS THEN
            ROLLBACK;
            -- Muestra un mensaje genérico
            DBMS_OUTPUT.PUT_LINE('Se ha producido un error al intentar actualizar los datos.');
            RAISE;
    END;
END USP_ActualizarCliente;
/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Procedimiento encargado de realizar un eliminado logico de la informacion de los clientes, es decir la informacion
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_EliminarCliente (
    -- Parámetro para identificar al cliente
    p_credencial_id IN VARCHAR2
) AS
BEGIN
    -- Inicia una transacción
    BEGIN
        -- Actualiza en CLIENTE
        UPDATE CLIENTE
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza en TELEFONOPORUSUARIO
        UPDATE TELEFONOPORUSUARIO
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza en DIRECCIONPORUSUARIO
        UPDATE DIRECCIONPORUSUARIO
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza en CREDENCIALESPORUSUARIO
        UPDATE CREDENCIALESPORUSUARIO
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Confirma la transacción si todas las actualizaciones son exitosas
        COMMIT;
    EXCEPTION
        -- Captura cualquier error y realiza rollback
        WHEN OTHERS THEN
            ROLLBACK;
            -- Muestra un mensaje genérico
            DBMS_OUTPUT.PUT_LINE('Se ha producido un error al intentar desactivar el cliente.');
            RAISE;
    END;
END USP_EliminarCliente;
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Procedimiento encargado de obtener la informacion de los clientes por su identificador.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_SeleccionarClientePorCredencial (
    p_credencial_id IN VARCHAR2,
    RespuestaCliente OUT SYS_REFCURSOR
) AS
BEGIN
    -- Abre el cursor con una sola consulta unificada usando INNER JOIN
    OPEN RespuestaCliente FOR
    SELECT
        c.CREDENCIALID,
        c.ROLID,
        c.NOMBRE,
        c.PRIMERAPELLIDO,
        c.SEGUNDOAPELLIDO,
        c.FECHANACIMIENTO,
        t.NUMEROTELEFONO,
        t.CATEGORIATELEFONOID,
        t.NUMEROEXTENSION,
        t.DESCRIPCION AS TELEFONO_DESCRIPCION,
        d.CODIGOPAIS,
        d.CODIGOESTADO,
        d.CODIGOCONDADO,
        d.CODIGODISTRITO,
        d.DESCRIPCION AS DIRECCION_DESCRIPCION,
        cr.CORREOELECTRONICO,
        cr.CONTRASEÑA
    FROM CLIENTE c
    INNER JOIN TELEFONOPORUSUARIO t
        ON c.CREDENCIALID = t.CREDENCIALID
    INNER JOIN DIRECCIONPORUSUARIO d
        ON c.CREDENCIALID = d.CREDENCIALID
    INNER JOIN CREDENCIALESPORUSUARIO cr
        ON c.CREDENCIALID = cr.CREDENCIALID
    WHERE c.CREDENCIALID = p_credencial_id;
END USP_SeleccionarClientePorCredencial;
/

/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Procedimiento encargado de verificar si existe el usuario, en caso de existir devolveria el rol y el credencial sino iria un nulo
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_VerificarUsuario (
    p_correo_electronico IN VARCHAR2,
    p_contrasena         IN VARCHAR2, -- Contraseña ya encriptada en SHA-512
    p_credencial_id      OUT VARCHAR2, -- CREDENCIALID del usuario si existe
    p_rol_id             OUT NUMBER     -- ROLID del usuario si existe
) AS
BEGIN
    -- Inicializa los parámetros de salida
    p_credencial_id := NULL;
    p_rol_id := NULL;
    
    -- Verifica si el usuario existe con el correo electrónico y la contraseña proporcionados
    BEGIN
        SELECT 
              c.CREDENCIALID,
              c.ROLID
        INTO p_credencial_id, p_rol_id
        FROM CREDENCIALESPORUSUARIO cr
        INNER JOIN CLIENTE c
            ON cr.CREDENCIALID = c.CREDENCIALID
        WHERE cr.CORREOELECTRONICO = p_correo_electronico
            AND cr.CONTRASEÑA = p_contrasena;
        
        -- Si no se encuentra ningún registro, p_credencial_id y p_rol_id serán NULL
    EXCEPTION
        -- Captura cualquier error y muestra un mensaje
        WHEN NO_DATA_FOUND THEN
            -- Si no se encuentra ningún dato, p_credencial_id y p_rol_id permanecen NULL
            p_credencial_id := NULL;
            p_rol_id := NULL;
        WHEN OTHERS THEN
            -- Muestra el mensaje de error y asigna NULL
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
            p_credencial_id := NULL;
            p_rol_id := NULL;
    END;
END USP_VerificarUsuario;
/

/****************************************************************************************************************************************************************
Autor: Luis Solorzano Campos
Id Requirement: AR-001
Creation Date: [22/07/2024]   (MM/dd/YYYY)
Requirement: Procedimiento encargado de cancelar una cita previamente agendada.

*Modificaciones*
Autor: Horacio Porras Marín
Id Requirement: AR-003 
Creation Date: 11/08/2024   (MM/dd/YYYY)
Information: Recreación del SP para el CRUD de Citas.
****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_CANCELAR_CITA (
    p_citaId NUMBER,
    p_editadoPor VARCHAR2
)
AS
BEGIN
    UPDATE CITAS
    SET HABILITADO = 0,
        EDITADOPOR = p_editadoPor,
        HORAFINALIZACION = TO_CHAR(SYSDATE, 'HH24:MI')
    WHERE CITAID = p_citaId AND HABILITADO != 0; --Solo actualiza si la cita no está cancelada.

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No se encontró la cita o ya estaba cancelada.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Cita cancelada correctamente.');
    END IF;
END;
/
/****************************************************************************************************************************************************************
Autor: Jason Zuñiga Solorzano
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Este procedimiento se encarga de actualizar cualquier cambio en la tabla cita

*Modificaciones*
Autor: Horacio Porras Marín
Id Requirement: AR-003 
Creation Date: 11/08/2024   (MM/dd/YYYY)
Information: Cambio de Type en varias columnas.
*************************************************************************************************************************/
CREATE OR REPLACE PROCEDURE USP_ACTUALIZAR_CITA (
    p_CITAID IN NUMBER,
    p_CREDENCIALID IN VARCHAR2,
    p_PLACAVEHICULOID IN VARCHAR2,
    p_VIN IN VARCHAR2,
    p_SERVICIOID IN NUMBER,
    p_ESTADOCITAID IN NUMBER,
    p_FECHAAGENDADA IN DATE,
    p_HORAAGENDADA IN VARCHAR2,
    p_EDITADOPOR IN VARCHAR2,
    p_HABILITADO IN NUMBER
) AS
BEGIN
    UPDATE CITAS
    SET CREDENCIALID = p_CREDENCIALID,
        PLACAVEHICULOID = p_PLACAVEHICULOID,
        VIN = p_VIN,
        SERVICIOID = p_SERVICIOID,
        ESTADOCITAID = p_ESTADOCITAID,
        FECHAAGENDADA = p_FECHAAGENDADA,
        HORAAGENDADA = p_HORAAGENDADA,
        EDITADOPOR = p_EDITADOPOR,
        HABILITADO = p_HABILITADO,
        FECHACREACION = SYSDATE
    WHERE CITAID = p_CITAID;
END USP_ACTUALIZAR_CITA;
/
/****************************************************************************************************************************************************************
Autor: Jason Zuñiga Solorzano
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement:  Este procedimiento se encarga de agregar informacion en la tabla cita

*Modificaciones*
Autor: Horacio Porras Marín
Id Requirement: AR-003 
Creation Date: 11/08/2024   (MM/dd/YYYY)
Information: Cambio de Type en varias columnas.
*************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE USP_AGREGAR_CITA (
    p_CITAID IN NUMBER,
    p_CREDENCIALID IN VARCHAR2,
    p_PLACAVEHICULOID IN VARCHAR2,
    p_VIN IN VARCHAR2,
    p_SERVICIOID IN NUMBER,
    p_ESTADOCITAID IN NUMBER,
    p_FECHAAGENDADA IN DATE,
    p_HORAAGENDADA IN VARCHAR2,
    p_EDITADOPOR IN VARCHAR2,
    p_HABILITADO IN NUMBER
) AS
BEGIN
    INSERT INTO CITAS (CITAID, CREDENCIALID, PLACAVEHICULOID, VIN, SERVICIOID, ESTADOCITAID, FECHAAGENDADA, HORAAGENDADA, EDITADOPOR, HABILITADO, FECHACREACION)
    VALUES (p_CITAID, p_CREDENCIALID, p_PLACAVEHICULOID, p_VIN, p_SERVICIOID, p_ESTADOCITAID, p_FECHAAGENDADA, p_HORAAGENDADA, p_EDITADOPOR, p_HABILITADO, SYSDATE);
END USP_AGREGAR_CITA;
/
 /****************************************************************************************************************************************************************
Autor: Luis Solorzano Campos
Id Requirement: AR-001 
Creation Date: [22/07/2024]   (MM/dd/YYYY)
Requirement: Procedimiento encargado de enviar una confirmación de cancelación de cita al cliente.
****************************************************************************************************************************************************************/

CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_CONFIRMACION_CANCELACION_CITA (
    p_cita_id       IN NUMBER,    -- ID de la cita cancelada
    p_credencial_id IN VARCHAR2   -- ID de la credencial del cliente
) AS
    p_correo_electronico VARCHAR2(100);
BEGIN
    -- Obtiene el correo electrónico del cliente
    SELECT CORREOELECTRONICO
    INTO p_correo_electronico
    FROM ARTAVIARACING.CREDENCIALESPORUSUARIO
    WHERE CREDENCIALID = p_credencial_id;

    -- Enviar correo electrónico de confirmación
    BEGIN
        SEND_EMAIL(p_correo_electronico, 
                   'Confirmación de Cancelación de Cita', 
                   'Su cita con ID ' || p_cita_id || ' ha sido cancelada exitosamente.');
       
        -- Confirma la transacción si el envío es exitoso
        COMMIT;
    END;
END USP_EnviarConfirmacionCancelacion;
/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 08/04/2024   (MM/dd/YYYY)
Requirement:  Procedimiento encargado de verificar si existe el usuario al momento de registrar un usuario.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_VerificarExistenciaUsuario (
    p_credencialId       IN VARCHAR2,    
    p_credencial_id      OUT VARCHAR2 -- CREDENCIALID del usuario si existe
    
) AS
BEGIN
    -- Inicializa los parámetros de salida
    p_credencial_id := NULL;    
    
    -- Verifica si el usuario existe con el correo electrónico y la contraseña proporcionados
    BEGIN
        SELECT 
              c.CREDENCIALID
        INTO p_credencial_id
        FROM CLIENTE c            
        WHERE   c.CREDENCIALID = p_credencialId;
        
        -- Si no se encuentra ningún registro, p_credencial_id y p_rol_id serán NULL
    EXCEPTION
        -- Captura cualquier error y muestra un mensaje
        WHEN NO_DATA_FOUND THEN
            -- Si no se encuentra ningún dato, p_credencial_id y p_rol_id permanecen NULL
            p_credencial_id := NULL;            
        WHEN OTHERS THEN
            -- Muestra el mensaje de error y asigna NULL
            DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
            p_credencial_id := NULL;            
    END;
END USP_VerificarExistenciaUsuario;
/
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 21/07/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado encargado de obtener los tipos de teléfono desde base de datos.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_SeleccionarTipoTelefono (
    RespuestaTipoTelefono OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN RespuestaTipoTelefono FOR
    SELECT 
        CATEGORIATELEFONOID,
        TIPOTELEFONO
    FROM CATEGORIATELEFONO;   
END USP_SeleccionarTipoTelefono;
/

-- Categorías para menús y submenús
INSERT INTO "ARTAVIARACING"."CATEGORIAMENU" (CATEGORIAMENUID, TIPOMENU, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(1, 'MENU', 'Menú Principal', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIAMENU" (CATEGORIAMENUID, TIPOMENU, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 'SUBMENU', 'Sub menú', '000000001', 1, SYSDATE);


-- Menús principales
INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(1, 1, NULL, 'Home', '/home', 1, 'fa fa-home', 'Página principal', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 1, NULL, 'Gestión Administradora', '/adminmanager', 1, 'fa fa-box-open', 'Gestión de administración', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(3, 1, NULL, 'Gestión de Citas', '/shedulemanager', 1, 'fa fa-calendar-check', 'Gestión de citas', '000000001', 1, SYSDATE);

-- Submenús
INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(4, 2, 2, 'Inventario', '/inventario', 2, 'fa fa-warehouse', 'Gestión de inventario', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(5, 2, 3, 'Agendar', '/agendar', 2, 'fa fa-calendar-plus', 'Agendar citas', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(6, 2, 3, 'Mis Citas', '/miscitas', 2, 'fa fa-calendar-day', 'Mis citas', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(7, 2, 3, 'Citas', '/citas', 2, 'fa fa-calendar-alt', 'Todas las citas', '000000001', 1, SYSDATE);
INSERT INTO "ARTAVIARACING"."MENU" (MENUID, CATEGORIAMENUID, MENUPADREID, NOMBRE, URL, NIVEL, ICONO, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(8, 1, NULL, 'Repuestos', '/UsuarioInventario', 1, 'fa fa-cogs', 'Gesti n de Repuestos', '000000001', 1, SYSDATE);


-- Supongamos que el rol con ID 1 es 'Administrador'
INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(1, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(1, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(1, 3, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 3, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(1, 4, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 5, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 6, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 7, '000000001', 1, SYSDATE);
INSERT INTO "ARTAVIARACING"."MENUPORROL" (ROLID, MENUID, EDITADOPOR, HABILITADO, FECHACREACION) VALUES 
(2, 8, '000000001', 1, SYSDATE);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Id Requirement: AR-001 
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado encargado de obtener el menú correspondiente a un rol específico y generar la estructura HTML para su representación.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE PROCEDURE USP_ObtenerMenuPorRol (
    p_rolid IN NUMBER,
    p_html OUT CLOB
) AS
    v_html CLOB := '<ul class="menu">';
    v_project_name VARCHAR2(50) := 'Artavia_Racing'; -- Nombre del proyecto
    v_has_submenus NUMBER;
    v_menu_url VARCHAR2(255);
    v_submenu_url VARCHAR2(255);
BEGIN
    -- Inicializa DBMS_OUTPUT para depuración
    DBMS_OUTPUT.PUT_LINE('Rol ID: ' || p_rolid);

    -- Agregar el ítem "Home" al principio del menú
    FOR v_home IN (
        SELECT M.MENUID, M.NOMBRE, M.URL, M.ICONO
        FROM MENU M
        INNER JOIN CATEGORIAMENU C ON M.CATEGORIAMENUID = C.CATEGORIAMENUID
        WHERE C.TIPOMENU = 'MENU'
          AND M.NOMBRE = 'Home'
          AND M.MENUID IN (SELECT MENUID FROM MENUPORROL WHERE ROLID = p_rolid AND HABILITADO = 1)
          AND M.HABILITADO = 1
    ) LOOP
        v_html := v_html || '<li><a href="/' || v_project_name || '/home.jsp"><i class="' || v_home.ICONO || '"></i> ' || v_home.NOMBRE || '</a></li>';
        -- Diagnóstico
        DBMS_OUTPUT.PUT_LINE('Home: ' || v_home.NOMBRE);
    END LOOP;

    -- Iterar sobre los menús principales (categoría TIPOMENU = 'MENU') excluyendo el "Home"
    FOR v_menu IN (
        SELECT M.MENUID, M.NOMBRE, M.URL, M.ICONO, M.NIVEL 
        FROM MENU M
        INNER JOIN CATEGORIAMENU C ON M.CATEGORIAMENUID = C.CATEGORIAMENUID
        WHERE C.TIPOMENU = 'MENU'
          AND M.NOMBRE <> 'Home'
          AND M.MENUID IN (SELECT MENUID FROM MENUPORROL WHERE ROLID = p_rolid AND HABILITADO = 1)
          AND M.HABILITADO = 1
        ORDER BY M.NIVEL, M.MENUPADREID NULLS FIRST
    ) LOOP
        -- Verificar si el menú tiene submenús
        SELECT COUNT(*)
        INTO v_has_submenus
        FROM MENU M2
        INNER JOIN CATEGORIAMENU C2 ON M2.CATEGORIAMENUID = C2.CATEGORIAMENUID
        WHERE M2.MENUPADREID = v_menu.MENUID
          AND C2.TIPOMENU = 'SUBMENU'
          AND M2.MENUID IN (SELECT MENUID FROM MENUPORROL WHERE ROLID = p_rolid AND HABILITADO = 1)
          AND M2.HABILITADO = 1;

        -- Construir la URL del menú principal, asegurando que no haya doble '/'
        v_menu_url := v_menu.URL;
        IF v_menu_url IS NOT NULL AND v_menu_url LIKE '/%' THEN
            v_menu_url := SUBSTR(v_menu_url, 2); -- Eliminar el '/' inicial si existe
        END IF;
        v_menu_url := '/' || v_project_name || '/' || v_menu_url || '.jsp';

        -- Crear el menú principal
        v_html := v_html || '<li';
        -- Solo añadir id al span si el menú principal tiene submenús
        IF v_has_submenus > 0 THEN
            v_html := v_html || '><span id="idSpan"><i class="' || v_menu.ICONO || '"></i> ' || v_menu.NOMBRE || '</span>';
        ELSE
            v_html := v_html || '><a href="' || v_menu_url || '"><i class="' || v_menu.ICONO || '"></i> ' || v_menu.NOMBRE || '</a>';
        END IF;

        -- Diagnóstico
        DBMS_OUTPUT.PUT_LINE('Menú: ' || v_menu.NOMBRE);

        -- Buscar submenús asociados (categoría TIPOMENU = 'SUBMENU')
        FOR v_submenu IN (
            SELECT M2.MENUID, M2.NOMBRE, M2.URL, M2.ICONO
            FROM MENU M2
            INNER JOIN CATEGORIAMENU C2 ON M2.CATEGORIAMENUID = C2.CATEGORIAMENUID
            WHERE C2.TIPOMENU = 'SUBMENU'
              AND M2.MENUPADREID = v_menu.MENUID
              AND M2.MENUID IN (SELECT MENUID FROM MENUPORROL WHERE ROLID = p_rolid AND HABILITADO = 1)
              AND M2.HABILITADO = 1
        ) LOOP
            -- Construir la URL del submenú, asegurando que no haya doble '/'
            v_submenu_url := v_submenu.URL;
            IF v_submenu_url IS NOT NULL AND v_submenu_url LIKE '/%' THEN
                v_submenu_url := SUBSTR(v_submenu_url, 2); -- Eliminar el '/' inicial si existe
            END IF;
            v_submenu_url := '/' || v_project_name || '/' || v_submenu_url || '.jsp';

            -- Si hay submenús, añadirlos dentro de un <ul class="submenu">
            v_html := v_html || '<ul class="submenu">';
            v_html := v_html || '<li><a href="' || v_submenu_url || '"><i class="' || v_submenu.ICONO || '"></i> ' || v_submenu.NOMBRE || '</a></li>';
            v_html := v_html || '</ul>';
        END LOOP;

        -- Cerrar el elemento <li> del menú principal
        v_html := v_html || '</li>';
    END LOOP;

    -- Cerrar el elemento <ul class="menu">
    v_html := v_html || '</ul>';

    -- Diagnóstico
    IF LENGTH(v_html) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No se generó contenido HTML.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Contenido HTML generado.');
    END IF;

    p_html := v_html;
END;
/

/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-001
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para insertar un nuevo producto en la tabla PRODUCTO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE USP_InsertarProducto (    
    p_categoriaProductoId IN NUMBER,
    p_nombre             IN VARCHAR2,
    p_descripcion        IN VARCHAR2,
    p_precioUnitario     IN NUMBER,
    p_cantidad           IN NUMBER,
    p_editadoPor         IN VARCHAR2,
    p_habilitado         IN NUMBER,
    p_fechaCreacion      IN DATE,
    p_imagen             IN BLOB
)
AS
BEGIN
    INSERT INTO ARTAVIARACING.PRODUCTO (        
        CATEGORIAPRODUCTOID,
        NOMBRE,
        DESCRIPCION,
        PRECIOUNITARIO,
        CANTIDAD,
        EDITADOPOR,
        HABILITADO,
        FECHACREACION,
        IMAGEN
    ) VALUES (        
        p_categoriaProductoId,
        p_nombre,
        p_descripcion,
        p_precioUnitario,
        p_cantidad,
        p_editadoPor,
        p_habilitado,
        p_fechaCreacion,
        p_imagen
    );
END USP_InsertarProducto;
/


 /****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-002
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para actualizar un producto existente en la tabla PRODUCTO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE USP_ActualizarProducto (
    p_productoId         IN NUMBER,
    p_categoriaProductoId IN NUMBER,
    p_nombre             IN VARCHAR2,
    p_descripcion        IN VARCHAR2,
    p_precioUnitario     IN NUMBER,
    p_cantidad           IN NUMBER,
    p_editadoPor         IN VARCHAR2,
    p_habilitado         IN NUMBER,
    p_fechaCreacion      IN DATE,
    p_imagen             IN BLOB
)
AS
BEGIN
    UPDATE ARTAVIARACING.PRODUCTO
    SET
        CATEGORIAPRODUCTOID = p_categoriaProductoId,
        NOMBRE = p_nombre,
        DESCRIPCION = p_descripcion,
        PRECIOUNITARIO = p_precioUnitario,
        CANTIDAD = p_cantidad,
        EDITADOPOR = p_editadoPor,
        HABILITADO = p_habilitado,
        FECHACREACION = p_fechaCreacion,
        IMAGEN = p_imagen
    WHERE PRODUCTOID = p_productoId;
END USP_ActualizarProducto;
/
--select * from ARTAVIARACING.PRODUCTO
/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-003
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener un producto específico desde la tabla PRODUCTO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE USP_ObtenerProducto (
    p_productoId         IN NUMBER,
    p_cursor             OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN p_cursor FOR
    SELECT
        PRODUCTOID,
        CATEGORIAPRODUCTOID,
        NOMBRE,
        DESCRIPCION,
        PRECIOUNITARIO,
        CANTIDAD,
        EDITADOPOR,
        HABILITADO,
        FECHACREACION,
        IMAGEN
    FROM ARTAVIARACING.PRODUCTO
    WHERE PRODUCTOID = p_productoId;
END USP_ObtenerProducto;
/

/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-004
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener todos los productos desde la tabla PRODUCTO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE USP_ObtenerTodosProductos (
    p_cursor             OUT SYS_REFCURSOR
)
AS
BEGIN
    OPEN p_cursor FOR
    SELECT
        PRODUCTOID,
        CATEGORIAPRODUCTOID,
        NOMBRE,
        DESCRIPCION,
        PRECIOUNITARIO,
        CANTIDAD,
        EDITADOPOR,
        HABILITADO,
        FECHACREACION,
        IMAGEN
    FROM ARTAVIARACING.PRODUCTO;
END USP_ObtenerTodosProductos;
/

/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-005
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para eliminar un producto específico desde la tabla PRODUCTO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE USP_EliminarProducto (
    p_productoId         IN NUMBER
)
AS
BEGIN
    DELETE FROM ARTAVIARACING.PRODUCTO
    WHERE PRODUCTOID = p_productoId;
END USP_EliminarProducto;
/

INSERT INTO "ARTAVIARACING"."CATEGORIAPRODUCTO" 
("CATEGORIAPRODUCTOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (1, 'Aceites y Lubricantes', 'Aceites y lubricantes para motores y transmisión.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIAPRODUCTO" 
("CATEGORIAPRODUCTOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (2, 'Filtros', 'Filtros de aceite, aire, combustible y aire de cabina.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIAPRODUCTO" 
("CATEGORIAPRODUCTOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (3, 'Componentes de Frenos', 'Pastillas de freno, discos, tambores y cilindros de freno.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIAPRODUCTO" 
("CATEGORIAPRODUCTOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (4, 'Sistemas de Escape', 'Silenciadores, tubos de escape, catalizadores y juntas.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIAPRODUCTO" 
("CATEGORIAPRODUCTOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (5, 'Partes de Suspensión', 'Amortiguadores, resortes, bieletas y brazos de control.', '000000001', 1, SYSDATE);


/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-005
Creation Date: 10/08/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener el ID y el nombre de todas las categorías de producto desde la tabla CATEGORIAPRODUCTO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE NONEDITIONABLE PROCEDURE  USP_ObtenerCategoriaProducto (
    RespuestaCategoria OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN RespuestaCategoria FOR
    
     SELECT 
        CATEGORIAPRODUCTOID,
        NOMBRE
    FROM CATEGORIAPRODUCTO;
END;
/

/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-001
Creation Date: 08/11/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener un listado de todos los productos activos, generando un contenedor HTML con los datos de cada producto y botones de filtrado por categor a.
Incluye un bot n para mostrar todos los productos.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/
CREATE OR REPLACE PROCEDURE SP_Obtener_Productos_HTML(
    OUT_HTML OUT CLOB
) AS 
BEGIN
    -- Inicializar OUT_HTML
    OUT_HTML := '<div class="container">';
    OUT_HTML := OUT_HTML || '<div class="btn-group" role="group" aria-label="Categor as">';

    -- Bot n para mostrar todos los productos
    OUT_HTML := OUT_HTML || '<button type="button" class="btn btn-primary filter-button" data-category="all">Todo</button>';

    -- Botones para cada categor a
    FOR CATEGORIA IN (
        SELECT CATEGORIAPRODUCTOID, NOMBRE 
        FROM CATEGORIAPRODUCTO 
        WHERE HABILITADO = 1
    ) LOOP
        OUT_HTML := OUT_HTML || '<button type="button" class="btn btn-primary filter-button" data-category="' || CATEGORIA.CATEGORIAPRODUCTOID || '">' || CATEGORIA.NOMBRE || '</button>';
    END LOOP;

    OUT_HTML := OUT_HTML || '</div>';
    OUT_HTML := OUT_HTML || '<div class="row" id="product-container">';

    -- Productos activos
    FOR PRODUCTO IN (
        SELECT P.PRODUCTOID, P.NOMBRE, P.DESCRIPCION, P.CANTIDAD, P.PRECIOUNITARIO, P.IMAGEN, C.CATEGORIAPRODUCTOID
        FROM PRODUCTO P
        JOIN CATEGORIAPRODUCTO C ON P.CATEGORIAPRODUCTOID = C.CATEGORIAPRODUCTOID
        WHERE P.HABILITADO = 1
    ) LOOP
        -- Generar el placeholder para la imagen
        DECLARE
            img_placeholder VARCHAR2(50);
        BEGIN
            img_placeholder := '[ImagenProducto' || PRODUCTO.PRODUCTOID || ']';

            OUT_HTML := OUT_HTML || '<div class="col-md-4 product-card" data-category="' || PRODUCTO.CATEGORIAPRODUCTOID || '">';
            OUT_HTML := OUT_HTML || '<div class="card">';

            -- Colocar el placeholder en el formato "data:image/jpeg;base64,${data}"
            OUT_HTML := OUT_HTML || '<img src="data:image/jpeg;base64,' || img_placeholder || '" class="card-img-top" alt="' || PRODUCTO.NOMBRE || '" width="50">';

            OUT_HTML := OUT_HTML || '<div class="card-body">';
            OUT_HTML := OUT_HTML || '<h5 class="card-title">' || PRODUCTO.NOMBRE || '</h5>';
            OUT_HTML := OUT_HTML || '<p class="card-text">' || PRODUCTO.DESCRIPCION || '</p>';
            OUT_HTML := OUT_HTML || '<p class="card-text">Cantidad: ' || PRODUCTO.CANTIDAD || '</p>';
            OUT_HTML := OUT_HTML || '<p class="card-text">Precio: ' || TO_CHAR(PRODUCTO.PRECIOUNITARIO, 'FM999G999D00') || '</p>';
            OUT_HTML := OUT_HTML || '</div></div></div>';
        END;
    END LOOP;

    OUT_HTML := OUT_HTML || '</div></div>';
     
END SP_Obtener_Productos_HTML;
/

/****************************************************************************************************************************************************************
Autor: Andrés Alvarado Matamoros
Id Requirement: AR-001
Creation Date: 08/11/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener un listado de todos los productos activos, generando un contenedor HTML con los datos de cada producto y botones de filtrado por categoría.
Incluye un botón para mostrar todos los productos.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE PROCEDURE SP_Obtener_Imagenes_Activas(
    OUT_CURSOR OUT SYS_REFCURSOR
) AS 
BEGIN
    OPEN OUT_CURSOR FOR
    SELECT 
        IMAGEN, 
        '[ImagenProducto' || PRODUCTOID || ']' AS PlaceHolderName
    FROM 
        PRODUCTO
    WHERE 
        HABILITADO = 1;  -- Filtrar solo los productos activos
END SP_Obtener_Imagenes_Activas;
/

/****************************************************************************************************************************************************************
Autor: Horacio Porras Marín
Id Requirement: AR-003
Creation Date: 08/18/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener los datos de los vehiculos desde la tabla VEHICULO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_SeleccionarVehiculo (
    RespuestaVehiculo OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN RespuestaVehiculo FOR
    SELECT 
        PLACAVEHICULOID,
        VIN,
        MARCA,
        MODELO,
        AÑO,
        COLOR,
        ALDIA,
        TITULOPROPIEDAD,
        HABILITADO,
        FECHACREACION
    FROM ARTAVIARACING.VEHICULO;
END USP_SeleccionarVehiculo;
/

/****************************************************************************************************************************************************************
Autor: Horacio Porras Marín
Id Requirement: AR-003
Creation Date: 08/18/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener los datos de las categorias de servicios desde la tabla CATEGORIASERVICIO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_ObtenerCategoriaServicio (
    RespuestaCategoria OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN RespuestaCategoria FOR

     SELECT 
        CATEGORIASERVICIOID,
        NOMBRE
    FROM CATEGORIASERVICIO;
END;
/

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (1, 'Mantenimiento Preventivo', 'Servicios de Mantenimiento Preventivo.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (2, 'Diagnóstico y Reparación de Sistemas Mecánicos', 'Servicios de Diagnóstico y Reparación de Sistemas Mecánicos.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (3, 'Servicios Eléctricos y Electrónicos', 'Servicios Eléctricos y Electrónicos para vehiculos.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (4, 'Reparaciones Especializadas', 'Servicios de Reparaciones Especializadas.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (5, 'Servicios de Frenos y Seguridad', 'Servicios de Frenos y Seguridad para vehiculos.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (6, 'Servicios de Carrocería y Pintura', 'Servicios de Carrocería y Pintura para vehiculos.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CATEGORIASERVICIO" 
("CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (7, 'Inspecciones y Revisiones', 'Servicios de Inspecciones y Revisiones.', '000000001', 1, SYSDATE);

/****************************************************************************************************************************************************************
Autor: Horacio Porras Marín
Id Requirement: AR-003
Creation Date: 08/18/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener los datos de los servicios desde la tabla SERVICIO.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_SeleccionarServicio (
    CodigoCategoriaServicio IN NUMBER,
    RespuestaServicio OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN RespuestaServicio FOR
    SELECT 
        SERVICIOID,
        NOMBRE,
        PRECIO,
        TIEMPOSERVICIO
    FROM ARTAVIARACING.SERVICIO
    WHERE CATEGORIASERVICIOID = CodigoCategoriaServicio;
END USP_SeleccionarServicio;
/

--Categoria Mantenimiento Preventivo 1
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (1, 1, 'Cambio de aceite y filtro', 'Servicio de Cambio de aceite y filtro.', 30000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (2, 1, 'Revisión y cambio de filtros', 'Servicio de Revisión y cambio de filtros(aire, combustible, cabina).', 10000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (3, 1, 'Rotación y balanceo de neumáticos', 'Servicio de Rotación y balanceo de neumáticos.', 20000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (4, 1, 'Alineación de ruedas', 'Servicio de Alineación de ruedas.', 25000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (5, 1, 'Inspección de frenos', 'Servicio de Inspección de frenos.', 15000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (6, 1, 'Revisión de líquidos', 'Servicio de Revisión de líquidos (refrigerante, frenos, dirección, etc.).', 10000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (7, 1, 'Revisión de correas y mangueras', 'Servicio de Revisión de correas y mangueras.', 22000, 1, '000000001', 1, SYSDATE);

--Categoria Diagnóstico y Reparación de Sistemas Mecánicos 2
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (8, 2, 'Diagnóstico y reparación de motor', 'Servicio de Diagnóstico y reparación de motor.', 325000, 5, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (9, 2, 'Reparación de transmisión', 'Servicio de Reparación de transmisión.', 430000, 8, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (10, 2, 'Reparación de sistemas de escape', 'Servicio de Reparación de sistemas de escape.', 75000, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (11, 2, 'Reparación de sistemas de suspensión', 'Servicio de Reparación de sistemas de suspensión.', 110000, 3, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (12, 2, 'Reemplazo de embrague', 'Servicio de Reemplazo de embrague.', 180000, 1, '000000001', 7, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (13, 2, 'Reparación de sistema de dirección', 'Servicio de Reparación de sistema de dirección.', 90000, 3, '000000001', 1, SYSDATE);

--Categoria Servicios Eléctricos y Electrónicos 3
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (14, 3, 'Diagnóstico y reparación de sistemas eléctricos', 'Servicio de Diagnóstico y reparación de sistemas eléctricos.', 60000, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (15, 3, 'Reemplazo y revisión de batería', 'Servicio de Reemplazo y revisión de batería.', 35000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (16, 3, 'Reparación de alternadores y motores de arranque', 'Servicio de Reparación de alternadores y motores de arranque.', 75000, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (17, 3, 'Diagnóstico y reparación de sistemas de luces', 'Servicio de Diagnóstico y reparación de sistemas de luces.', 33000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (18, 3, 'Reparación de sistemas de control electrónico (ECU)', 'Servicio de Reparación de sistemas de control electrónico (ECU).', 150000, 3, '000000001', 1, SYSDATE);

--Categoria Servicios de Frenos y Seguridad 4
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (19, 4, 'Reemplazo de pastillas y discos de freno', 'Servicio de Reemplazo de pastillas y discos de freno.', 45000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (20, 4, 'Reparación de frenos ABS', 'Servicio de Reparación de frenos ABS.', 82000, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (21, 4, 'Cambio de líquido de frenos', 'Servicio de Cambio de líquido de frenos.', 18000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (22, 4, 'Inspección y reparación de sistemas de seguridad', 'Servicio de Inspección y reparación de sistemas de seguridad (airbags, sensores, etc.).', 66000, 2, '000000001', 1, SYSDATE);

--Categoria Reparaciones Especializadas 5
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (23, 5, 'Reparación de sistemas de climatización', 'Servicio de Reparación de sistemas de climatización (A/C y calefacción).', 90000, 3, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (24, 5, 'Reprogramación de centralitas electrónicas (ECU)', 'Servicio de Reprogramación de centralitas electrónicas (ECU).', 45000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (25, 5, 'Instalación y reparación de sistemas de entretenimiento y navegación', 'Servicio de Instalación y reparación de sistemas de entretenimiento y navegación.', 120000, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (26, 5, 'Reparación de sistemas de combustible', 'Servicio de Reparación de sistemas de combustible.', 77000, 2, '000000001', 1, SYSDATE);

--Categoria Servicios de Carrocería y Pintura 6
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (27, 6, 'Reparación de golpes y abolladuras', 'Servicio de Reparación de golpes y abolladuras.', 150000, 48, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (28, 6, 'Pintura de carrocería', 'Servicio de Pintura de carrocería.', 320000, 72, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (29, 6, 'Pulido y detallado de pintura', 'Servicio de Pulido y detallado de pintura.', 38000, 5, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (30, 6, 'Reparación de parabrisas', 'Servicio de Reparación de parabrisas.', 30000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (31, 6, 'Instalación y reparación de vidrios', 'Servicio de Instalación y reparación de vidrios.', 50000, 1, '000000001', 1, SYSDATE);

--Inspecciones y Revisiones 7
INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (32, 7, 'Inspección técnica vehicular', 'Servicio de Inspección técnica vehicular.', 21000, 1, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (33, 7, 'Revisión previa a la compra de vehículos', 'Servicio de Revisión previa a la compra de vehículos.', 36000, 2, '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."SERVICIO" 
("SERVICIOID", "CATEGORIASERVICIOID", "NOMBRE", "DESCRIPCION", "PRECIO", "TIEMPOSERVICIO", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (34, 7, 'Inspección de emisiones contaminantes', 'Servicio de Inspección de emisiones contaminantes.', 14000, 1, '000000001', 1, SYSDATE);

/****************************************************************************************************************************************************************
Autor: Horacio Porras Marín
Id Requirement: AR-003
Creation Date: 08/18/2024   (MM/dd/YYYY)
Requirement: Procedimiento Almacenado para obtener los estados de cita desde la tabla ESTADOCITA.
****************************************************************************************************************************************************************/
/****************************************************************************************************************************************************************
Updated By                                  (MM/dd/YYYY)                                 ITEM and Detail
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

****************************************************************************************************************************************************************/

CREATE OR REPLACE NONEDITIONABLE PROCEDURE USP_SeleccionarEstadoCita (
    RespuestaEstadoCita OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN RespuestaEstadoCita FOR
    SELECT 
        ESTADOCITAID,
        ESTADO,
        DESCRIPCION,
        EDITADOPOR,
        HABILITADO,
        FECHACREACION
    FROM ARTAVIARACING.ESTADOCITA;
END USP_SeleccionarEstadoCita;
/

INSERT INTO "ARTAVIARACING"."ESTADOCITA" 
("ESTADOCITAID", "ESTADO", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (1, 'En Proceso', 'La cita está en proceso.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADOCITA" 
("ESTADOCITAID", "ESTADO", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (2, 'Completada', 'La cita ha sido completada.', '000000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADOCITA" 
("ESTADOCITAID", "ESTADO", "DESCRIPCION", "EDITADOPOR", "HABILITADO", "FECHACREACION") 
VALUES (3, 'Cancelada', 'La cita ha sido cancelada.', '000000001', 1, SYSDATE);

COMMIT;