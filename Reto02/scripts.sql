-- Con Base en las tablas de Clientes del primer reto
-- • En la tabla de Clientes agregar los atributos:
--      o	NOM_CORTO   Varchar (100)
--      o	EDAD        Number (3,0)

ALTER TABLE CLIENTES ADD NOM_CORTO VARCHAR(100);
ALTER TABLE CLIENTES ADD EDAD NUMBER(3,0);

-- • Actualizar el atributo NOM_CORTO con el contenido de: VAL_NOM1 y VAL_APE1
--      o	En la actualización se debe de considerar que la primera letra de cada atributo
--      se conserve en Mayúscula y el resto en minúscula.

UPDATE CLIENTES SET NOM_CORTO = INITCAP(VAL_NOM1 || ' ' || VAL_APE1);

-- • Calcular la edad de cada cliente y actualizar el atributo EDAD.

UPDATE CLIENTES SET EDAD = TRUNC(MONTHS_BETWEEN(CURRENT_DATE, FEC_NACI) / 12);

-- • Generar una sentencia que reemplace la letra “Ñ” por la letra “N” en los atributos
-- VAL_APE1 y VAL_APE2 de la tabla Clientes

UPDATE CLIENTES SET VAL_APE1 = REPLACE(VAL_APE1, 'Ñ', 'N'),
                    VAL_APE2 = REPLACE(VAL_APE2, 'Ñ', 'N')
                WHERE VAL_APE1 LIKE '%Ñ%' OR VAL_APE2 LIKE '%Ñ%';