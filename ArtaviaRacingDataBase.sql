/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del puesto de trabajo
****************************************************************************************************************************************************************/
CREATE TABLE "ARTAVIARACING"."PUESTOTRABAJO" 
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
CREATE TABLE "ARTAVIARACING"."ROL" 
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
CREATE TABLE "ARTAVIARACING"."PERSONAL" 
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
	  REFERENCES "ARTAVIARACING"."ROL" ("ROLID") ENABLE
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
CREATE TABLE "ARTAVIARACING"."CLIENTE" 
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
	  REFERENCES "ARTAVIARACING"."ROL" ("ROLID") ENABLE
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
CREATE TABLE "ARTAVIARACING"."CATEGORIATELEFONO" 
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
CREATE TABLE "ARTAVIARACING"."TELEFONOPORUSUARIO" 
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
	  REFERENCES "ARTAVIARACING"."CATEGORIATELEFONO" ("CATEGORIATELEFONOID") ENABLE, 
	 CONSTRAINT "TELEFONOPORUSUARIO_PERSONAL_FK" FOREIGN KEY ("CREDENCIALID")
	  REFERENCES "ARTAVIARACING"."PERSONAL" ("CREDENCIALID") ENABLE, 
	 CONSTRAINT "TELEFONOPORUSUARIO_CLIENTE_FK" FOREIGN KEY ("CREDENCIALID")
	  REFERENCES "ARTAVIARACING"."CLIENTE" ("CREDENCIALID") ENABLE
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
CREATE TABLE "ARTAVIARACING"."CREDENCIALESPORUSUARIO" 
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
ALTER TABLE "ARTAVIARACING"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PK" PRIMARY KEY (CREDENCIALID);

-- Agregar la restricción de llave foránea a la tabla PERSONAL
ALTER TABLE "ARTAVIARACING"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_PERSONAL_FK" FOREIGN KEY (CREDENCIALID)
    REFERENCES "ARTAVIARACING"."PERSONAL" (CREDENCIALID);

-- Agregar la restricción de llave foránea a la tabla CLIENTE
ALTER TABLE "ARTAVIARACING"."CREDENCIALESPORUSUARIO"
ADD CONSTRAINT "CREDENCIALESPORUSUARIO_CLIENTE_FK" FOREIGN KEY (CREDENCIALID)
    REFERENCES "ARTAVIARACING"."CLIENTE" (CREDENCIALID);
    
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de las categorias de los menus del sitio
****************************************************************************************************************************************************************/  
CREATE TABLE "ARTAVIARACING"."CATEGORIAMENU"
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
CREATE TABLE "ARTAVIARACING"."MENU"
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
ALTER TABLE "ARTAVIARACING"."MENU"
ADD CONSTRAINT "MENU_CATEGORIAMENU_FK" FOREIGN KEY (CATEGORIAMENUID)
    REFERENCES "ARTAVIARACING"."CATEGORIAMENU" (CATEGORIAMENUID);

-- Agregar la restricción de clave foránea a MENUPADRE
ALTER TABLE "ARTAVIARACING"."MENU"
ADD CONSTRAINT "MENU_MENUPADRE_FK" FOREIGN KEY (MENUPADREID)
    REFERENCES "ARTAVIARACING"."MENU" (MENUID);

/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 06/07/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del menu por rol
****************************************************************************************************************************************************************/      
CREATE TABLE "ARTAVIARACING"."MENUPORROL"
(
    ROLID           NUMBER              NOT NULL,
    MENUID          NUMBER              NOT NULL,
    EDITADOPOR      VARCHAR2(10)        NOT NULL,
    HABILITADO      NUMBER(1)           NOT NULL,
    FECHACREACION   DATE                NOT NULL,
    CONSTRAINT "MENUPORROL_PK" PRIMARY KEY (ROLID, MENUID)
);
-- Agregar la restricción de clave foránea a ROL
ALTER TABLE "ARTAVIARACING"."MENUPORROL"
ADD CONSTRAINT "MENUPORROL_ROL_FK" FOREIGN KEY (ROLID)
    REFERENCES "ARTAVIARACING"."ROL" (ROLID);

-- Agregar la restricción de clave foránea a MENU
ALTER TABLE "ARTAVIARACING"."MENUPORROL"
ADD CONSTRAINT "MENUPORROL_MENU_FK" FOREIGN KEY (MENUID)
    REFERENCES "ARTAVIARACING"."MENU" (MENUID);
    
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del Pais
****************************************************************************************************************************************************************/      
CREATE TABLE "ARTAVIARACING"."PAIS"
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

CREATE TABLE "ARTAVIARACING"."ESTADO"
(
    CODIGOESTADO   NUMBER          NOT NULL,
    CODIGOPAIS     NUMBER          NOT NULL,
    NOMBRE         VARCHAR2(255)   NOT NULL,
    EDITADOPOR     VARCHAR2(10)    NOT NULL,
    HABILITADO     NUMBER(1)       NOT NULL,
    FECHACREACION  DATE            NOT NULL,
    CONSTRAINT "ESTADO_PK" PRIMARY KEY (CODIGOESTADO)
);

ALTER TABLE "ARTAVIARACING"."ESTADO"
ADD CONSTRAINT "ESTADO_FK_PAIS"
FOREIGN KEY (CODIGOPAIS) REFERENCES "ARTAVIARACING"."PAIS" (CODIGOPAIS);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion de los contados del Pais
****************************************************************************************************************************************************************/  
CREATE TABLE "ARTAVIARACING"."CONDADO"
(
    CODIGOCONDADO  NUMBER          NOT NULL,
    CODIGOESTADO   NUMBER          NOT NULL,
    NOMBRE         VARCHAR2(255)   NOT NULL,
    EDITADOPOR     VARCHAR2(10)    NOT NULL,
    HABILITADO     NUMBER(1)       NOT NULL,
    FECHACREACION  DATE            NOT NULL,
    CONSTRAINT "CONDADO_PK" PRIMARY KEY (CODIGOCONDADO)
);

ALTER TABLE "ARTAVIARACING"."CONDADO"
ADD CONSTRAINT "CONDADO_FK_ESTADO"
FOREIGN KEY (CODIGOESTADO) REFERENCES "ARTAVIARACING"."ESTADO" (CODIGOESTADO);
/****************************************************************************************************************************************************************
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha Creación: 07/09/2024   (MM/dd/YYYY)
Enunciado: Esta tabla se creo  para guardar la informacion del distrito.
****************************************************************************************************************************************************************/  
CREATE TABLE "ARTAVIARACING"."DISTRITO"
(
    CODIGODISTRITO  NUMBER          NOT NULL,
    CODIGOCONDADO   NUMBER          NOT NULL,
    NOMBRE          VARCHAR2(255)   NOT NULL,
    EDITADOPOR      VARCHAR2(10)    NOT NULL,
    HABILITADO      NUMBER(1)       NOT NULL,
    FECHACREACION   DATE            NOT NULL,
    CONSTRAINT "DISTRITO_PK" PRIMARY KEY (CODIGODISTRITO)
);

ALTER TABLE "ARTAVIARACING"."DISTRITO"
ADD CONSTRAINT "DISTRITO_FK_CONDADO"
FOREIGN KEY (CODIGOCONDADO) REFERENCES "ARTAVIARACING"."CONDADO" (CODIGOCONDADO);


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
    PLACAVEHICULOID   VARCHAR2(20) PRIMARY KEY NOT NULL,
    VIN              VARCHAR2(50) NOT NULL,
    MARCA            VARCHAR2(80) NOT NULL,
    MODELO           VARCHAR2(80) NOT NULL,
    AÑO              NUMBER NOT NULL,
    COLOR            VARCHAR2(80) NOT NULL,
    ALDIA            NUMBER(1) NULL,
    TITULOPROPIEDAD  BLOB NOT NULL,
    HABILITADO       NUMBER(1) NOT NULL,
    FECHACREACION    DATE NOT NULL
);
/****************************************************************************************************************************************************************  
Creacion de la tabla: Citas
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la Tabla: Tabla que almacena las citas
****************************************************************************************************************************************************************/  
CREATE TABLE CITAS (
    CITAID              NUMBER          PRIMARY KEY NOT NULL,
    CREDENCIALID        VARCHAR2(20)    NOT NULL,
    PLACAVEHICULOID     VARCHAR2(20)    NOT NULL,
    VIN                 VARCHAR2(50)    NOT NULL,
    SERVICIOID          NUMBER          NOT NULL,
    ESTADOCITAID        NUMBER(10)      NOT NULL,
    FECHAAGENDADA       DATE            NOT NULL,
    DESCRIPCION         VARCHAR2(250)   NULL,
    HORAAGENDADA        TIMESTAMP       NOT NULL,
    HORAFINALIZACION    TIMESTAMP       NULL,
    EDITADOPOR          VARCHAR2(10)    NOT NULL,
    HABILITADO          NUMBER(1)       NOT NULL,
    FECHACREACION       DATE            NOT NULL,
    FOREIGN KEY (CREDENCIALID)    REFERENCES CLIENTE(CREDENCIALID),
    FOREIGN KEY (PLACAVEHICULOID) REFERENCES VEHICULO(PLACAVEHICULOID),
    FOREIGN KEY (SERVICIOID)      REFERENCES SERVICIO(SERVICIOID),
    FOREIGN KEY (ESTADOCITAID)    REFERENCES ESTADOCITA(ESTADOCITAID)
);
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
    PRODUCTOID           NUMBER          PRIMARY KEY NOT NULL,
    CATEGORIAPRODUCTOID  NUMBER          NOT NULL,
    NOMBRE               VARCHAR2(80)    NOT NULL,
    DESCRIPCION          VARCHAR2(250)   NULL,
    PRECIOUNITARIO       NUMBER          NOT NULL,
    CANTIDAD             NUMBER          NOT NULL,
    EDITADOPOR           VARCHAR2(10)    NOT NULL,
    HABILITADO           NUMBER(1)       NOT NULL,
    FECHACREACION        DATE            NOT NULL,
    FOREIGN KEY (CATEGORIAPRODUCTOID) REFERENCES CATEGORIAPRODUCTO(CATEGORIAPRODUCTOID)
);
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
INSERT INTO "ARTAVIARACING"."ROL" (NOMBRE, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES ('Administrador', 'Dueño del Sistema', '00000001', 1, SYSDATE);
INSERT INTO "ARTAVIARACING"."ROL" (NOMBRE, DESCRIPCION, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES ('Cliente', 'Cliente que adquiere nuestros servicios', '00000001', 1, SYSDATE);
-- SELECT * FROM  "ARTAVIARACING"."ROL" -- 1= Administrador , 2 = Cliente
--Insert PUESTO 
INSERT INTO ARTAVIARACING.PUESTOTRABAJO (
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
--SELECT * FROM  "ARTAVIARACING"."PUESTOTRABAJO" 
--Insert Tabla Personal como administrador 
INSERT INTO ARTAVIARACING.PERSONAL (
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
--SELECT * FROM  "ARTAVIARACING"."PERSONAL" 
--Insert Tabla Pais
INSERT INTO "ARTAVIARACING"."PAIS" (CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 'COSTA RICA', '00000001', 1, SYSDATE);

--Insert Provincias
INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 1, 'SAN JOSÉ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (2, 1, 'ALAJUELA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (3, 1, 'CARTAGO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (4, 1, 'HEREDIA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (5, 1, 'GUANACASTE', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (6, 1, 'PUNTARENAS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."ESTADO" (CODIGOESTADO, CODIGOPAIS, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (7, 1, 'LIMÓN', '00000001', 1, SYSDATE);

-- Cantones de la provincia de San José
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (1, 1, 'SAN JOSÉ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (2, 1, 'ESCAZÚ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (3, 1, 'DESAMPARADOS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (4, 1, 'PURISCAL', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (5, 1, 'TARRAZÚ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (6, 1, 'ASERRÍ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (7, 1, 'MORA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (8, 1, 'GOICOECHEA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (9, 1, 'SANTA ANA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (10, 1, 'ALAJUELITA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (11, 1, 'VAZQUEZ DE CORONADO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (12, 1, 'ACOSTA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (13, 1, 'TIBÁS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (14, 1, 'MORAVIA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (15, 1, 'MONTES DE OCA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (16, 1, 'TURRUBARES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (17, 1, 'DOTA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (18, 1, 'CURRIDABAT', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (19, 1, 'PÉREZ ZELEDÓN', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (20, 1, 'LEÓN CORTÉS', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Alajuela
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (21, 2, 'ALAJUELA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (22, 2, 'SAN RAMÓN', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (23, 2, 'GRECIA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (24, 2, 'SAN MATEO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (25, 2, 'ATENAS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (26, 2, 'NARANJO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (27, 2, 'PALMARES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (28, 2, 'POÁS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (29, 2, 'OROTINA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (30, 2, 'SAN CARLOS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (31, 2, 'ZARCERO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (32, 2, 'VALVERDE VEGA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (33, 2, 'UPALA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (34, 2, 'LOS CHILES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (35, 2, 'GUATUSO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Cartago
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (36, 3, 'CARTAGO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (37, 3, 'PARAÍSO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (38, 3, 'LA UNIÓN', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (39, 3, 'JIMÉNEZ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (40, 3, 'TURRIALBA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (41, 3, 'ALVARADO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (42, 3, 'OREAMUNO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (43, 3, 'EL GUARCO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Heredia
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (44, 4, 'HEREDIA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (45, 4, 'BARVA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (46, 4, 'SANTO DOMINGO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (47, 4, 'SANTA BÁRBARA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (48, 4, 'SAN RAFAEL', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (49, 4, 'SAN ISIDRO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (50, 4, 'BELÉN', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (51, 4, 'FLORES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (52, 4, 'SAN PABLO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Guanacaste
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (53, 5, 'LIBERIA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (54, 5, 'NICOYA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (55, 5, 'SANTA CRUZ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (56, 5, 'BAGACES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (57, 5, 'CARRILLO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (58, 5, 'CAÑAS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (59, 5, 'ABANGARES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (60, 5, 'TILARÁN', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (61, 5, 'NANDAYURE', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (62, 5, 'LA CRUZ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (63, 5, 'HOJANCHA', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Puntarenas
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (64, 6, 'PUNTARENAS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (65, 6, 'ESPARZA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (66, 6, 'BUENOS AIRES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (67, 6, 'MONTES DE ORO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (68, 6, 'OSA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (69, 6, 'QUEPOS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (70, 6, 'GOLFITO', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (71, 6, 'COTO BRUS', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (72, 6, 'PARRITA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (73, 6, 'CORREDORES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (74, 6, 'GARABITO', '00000001', 1, SYSDATE);

-- Cantones de la provincia de Limón
INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (75, 7, 'LIMÓN', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (76, 7, 'POCOCÍ', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (77, 7, 'SIQUIRRES', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (78, 7, 'TALAMANCA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (79, 7, 'MATINA', '00000001', 1, SYSDATE);

INSERT INTO "ARTAVIARACING"."CONDADO" (CODIGOCONDADO, CODIGOESTADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES (80, 7, 'GUÁCIMO', '00000001', 1, SYSDATE);

select * from "ARTAVIARACING"."CONDADO";
-- Inserts para los distritos del cant?n Para?so
INSERT INTO "ARTAVIARACING"."DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES  (1, 37, 'Para?so', '00000001', 1, SYSDATE);
INSERT INTO "ARTAVIARACING"."DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES    (2, 37, 'Santiago', '00000001', 1, SYSDATE);
INSERT INTO "ARTAVIARACING"."DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES   (3, 37, 'Orosi', '00000001', 1, SYSDATE);
INSERT INTO "ARTAVIARACING"."DISTRITO" (CODIGODISTRITO, CODIGOCONDADO, NOMBRE, EDITADOPOR, HABILITADO, FECHACREACION)
VALUES   (4, 37, 'Cach?', '00000001', 1, SYSDATE);
select * from "ARTAVIARACING"."DISTRITO";
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
CREATE VIEW ARTAVIARACING.vw_personal_detalle AS 
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
FROM ARTAVIARACING.PERSONAL p
JOIN ARTAVIARACING.ROL r ON p.ROLID = r.ROLID
JOIN ARTAVIARACING.PUESTOTRABAJO pt ON p.PUESTOTRABAJOID = pt.PUESTOTRABAJOID;
  
/****************************************************************************************************************************************************************  
Creacion de la vista: ClientesDireccion
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: Esta vista muestra toda la dirrecion del cliente
****************************************************************************************************************************************************************/  
CREATE VIEW ARTAVIARACING.vw_clientes_con_direccion AS 
SELECT 
    c.CREDENCIALID,
    c.NOMBRE,
    c.PRIMERAPELLIDO,
    c.SEGUNDOAPELLIDO,
    c.FECHANACIMIENTO,
    d.DESCRIPCION AS DIRECCION
FROM ARTAVIARACING.CLIENTE c
JOIN ARTAVIARACING.DIRECCIONPORUSUARIO d ON c.CREDENCIALID = d.CREDENCIALID;

/****************************************************************************************************************************************************************  
Creacion de la vista: CitasDetalles
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: Esta vista muestra informacion del cliente y sus citas
****************************************************************************************************************************************************************/  
CREATE VIEW ARTAVIARACING.vw_citas_detalle AS 
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
FROM ARTAVIARACING.CITAS c
JOIN ARTAVIARACING.CLIENTE cl ON c.CREDENCIALID = cl.CREDENCIALID
JOIN ARTAVIARACING.VEHICULO v ON c.PLACAVEHICULOID = v.PLACAVEHICULOID;
/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: Jason zuñiga solorzano
Requerimiento: AR-001
Fecha de Creacion: 14-07-24 DD-MM-YYYY
Enunciado de la vista: Esta vista muestra todo el diagnostico
****************************************************************************************************************************************************************/  
CREATE VIEW ARTAVIARACING.vw_diagnosticos_detalle AS 
SELECT 
    d.DIAGNOSTICOID,
    d.DESCRIPCION AS DIAGNOSTICO_DESCRIPCION,
    d.CODTRABAJADOR,
    c.FechaAgendada,
    c.HoraAgendada,
    c.HoraFinalizacion,
    p.NOMBRE AS TRABAJADOR_NOMBRE
FROM ARTAVIARACING.DIAGNOSTICO d
JOIN ARTAVIARACING.CITAS c ON d.CITAID = c.CITAID
JOIN ARTAVIARACING.PERSONAL p ON d.CODTRABAJADOR = p.CODTRABAJADOR;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: José Andrés Alvarado Matamoros
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Vista encargada de devolver la informacion de los Paises
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW ARTAVIARACING.vw_ObtenerPais AS
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
CREATE OR REPLACE VIEW ARTAVIARACING.vw_ObtenerEstado AS
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
CREATE OR REPLACE VIEW ARTAVIARACING.vw_ObtenerCondado AS
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
CREATE OR REPLACE VIEW ARTAVIARACING.vw_ObtenerDistritos AS
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
CREATE OR REPLACE VIEW ARTAVIARACING.vw_producto_detalle AS 
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
FROM ARTAVIARACING.PRODUCTO p
JOIN ARTAVIARACING.CATEGORIAPRODUCTO cp ON p.CATEGORIAPRODUCTOID = cp.CATEGORIAPRODUCTOID;

/****************************************************************************************************************************************************************  
Creacion de la vista: ServiciosDetalle
Autor: Horacio Porras Marín
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Muestra toda la información del servicio, incluyendo la categoria por nombre.
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW ARTAVIARACING.vw_servicio_detalle AS 
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
FROM ARTAVIARACING.SERVICIO s
JOIN ARTAVIARACING.CATEGORIASERVICIO cs ON s.CATEGORIASERVICIOID = cs.CATEGORIASERVICIOID;

/****************************************************************************************************************************************************************  
Creacion de la vista: DiagnosticosDetalle
Autor: Horacio Porras Marín
Requerimiento: AR-001
Fecha de Creacion: 21-07-24 DD-MM-YYYY
Enunciado de la vista: Muestra la información de los vehiculos.
****************************************************************************************************************************************************************/  
CREATE OR REPLACE VIEW ARTAVIARACING.vw_ObtenerVehiculo AS
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
CREATE OR REPLACE VIEW ARTAVIARACING.vw_ObtenerPuesto AS
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
    -- Parámetros para CLIENTE
    p_credencial_id       IN VARCHAR2,
    p_rol_id              IN NUMBER,
    p_nombre              IN VARCHAR2,
    p_primer_apellido     IN VARCHAR2,
    p_segundo_apellido    IN VARCHAR2,
    p_fecha_nacimiento    IN DATE,
    p_editado_por         IN VARCHAR2 DEFAULT '000000001', -- Usuario administrador del sistema
    p_habilitado          IN NUMBER DEFAULT 1,
    p_fecha_creacion      IN DATE DEFAULT SYSDATE,

    -- Parámetros para TELEFONOPORUSUARIO
    p_numero_telefono     IN VARCHAR2,
    p_categoria_telefono_id IN NUMBER,
    p_numero_extension    IN NUMBER DEFAULT NULL,
    p_descripcion         IN VARCHAR2 DEFAULT NULL,

    -- Parámetros para DIRECCIONPORUSUARIO
    p_codigo_pais         IN NUMBER,
    p_codigo_estado       IN NUMBER,
    p_codigo_condado      IN NUMBER,
    p_codigo_distrito     IN NUMBER,
    p_descripcion_direccion IN VARCHAR2,

    -- Parámetros para CREDENCIALESPORUSUARIO
    p_correo_electronico  IN VARCHAR2,
    p_contrasena          IN VARCHAR2,
    p_es_contrasena_temporal IN NUMBER DEFAULT 0
) AS
BEGIN
    -- Inicia una transacción
    BEGIN
        -- Inserta en CLIENTE
        INSERT INTO ARTAVIARACING.CLIENTE (
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
        INSERT INTO ARTAVIARACING.TELEFONOPORUSUARIO (
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
        INSERT INTO ARTAVIARACING.DIRECCIONPORUSUARIO (
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
        INSERT INTO ARTAVIARACING.CREDENCIALESPORUSUARIO (
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
        UPDATE ARTAVIARACING.CLIENTE
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
        UPDATE ARTAVIARACING.TELEFONOPORUSUARIO
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
        UPDATE ARTAVIARACING.DIRECCIONPORUSUARIO
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
        UPDATE ARTAVIARACING.CREDENCIALESPORUSUARIO
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
        UPDATE ARTAVIARACING.CLIENTE
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza en TELEFONOPORUSUARIO
        UPDATE ARTAVIARACING.TELEFONOPORUSUARIO
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza en DIRECCIONPORUSUARIO
        UPDATE ARTAVIARACING.DIRECCIONPORUSUARIO
        SET HABILITADO = 0
        WHERE CREDENCIALID = p_credencial_id;

        -- Actualiza en CREDENCIALESPORUSUARIO
        UPDATE ARTAVIARACING.CREDENCIALESPORUSUARIO
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
    FROM ARTAVIARACING.CLIENTE c
    INNER JOIN ARTAVIARACING.TELEFONOPORUSUARIO t
        ON c.CREDENCIALID = t.CREDENCIALID
    INNER JOIN ARTAVIARACING.DIRECCIONPORUSUARIO d
        ON c.CREDENCIALID = d.CREDENCIALID
    INNER JOIN ARTAVIARACING.CREDENCIALESPORUSUARIO cr
        ON c.CREDENCIALID = cr.CREDENCIALID
    WHERE c.CREDENCIALID = p_credencial_id;
END USP_SeleccionarClientePorCredencial;


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
        FROM ARTAVIARACING.CREDENCIALESPORUSUARIO cr
        INNER JOIN ARTAVIARACING.CLIENTE c
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



 
