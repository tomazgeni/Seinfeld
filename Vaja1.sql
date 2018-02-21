USE BiSandbox;
GO

/*  
---------------------------------------
---------------------------------------
--- VAJA 1
---------------------------------------
---------------------------------------
*/


DROP TABLE IF EXISTS PowerBI_Tecaj_Tabela1;
GO

CREATE TABLE PowerBI_Tecaj_Tabela1
(
 col1 INT
,col2 INT
,col3 INT
,country CHAR(2)
)

INSERT INTO PowerBI_Tecaj_Tabela1
	      SELECT 1,2,3,'SI'
UNION ALL SELECT 2,3,4, 'SI'
UNION ALL SELECT 3,4,2, 'AT'
UNION ALL SELECT 4,5,3, 'AT'
UNION ALL SELECT 5,5,5, 'DE'
UNION ALL SELECT 2,3,6, 'DE'


-- ADD additional column 
-- SHOW in PowerBI how to refresh the data


INSERT INTO PowerBI_Tecaj_Tabela1
	      SELECT 5,3,4,'CH'
UNION ALL SELECT 4,3,3, 'CH'


--- IMPORT SQL_DATA_vaja2

-- pokaži merganje... ne gre

-- import Imena

-- pokaži merganje -> gre
-- spremeni header - prvo vrstico

--  osveži in dodaj col1, col2, col3 in col4 na skupen graf




/*  
---------------------------------------
---------------------------------------
--- VAJA 2
---------------------------------------
---------------------------------------
*/

-- roèno vnesi eno novo kolonco
-- v Query1 dodamo:
LOG_zmnozek = LOG(Query1[Merjenje1]*Query1[Merjenje2])
kalkulirana_mera = [Merjenje1]*[Merjenje2]

