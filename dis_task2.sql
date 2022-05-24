CREATE TABLE MGMAG_STORE( 
	unit_code INT PRIMARY KEY, 
	unit_name VARCHAR(50)
); 

INSERT INTO MGMAG_STORE VALUES(709, 'KASHIRSKAYA AUCHAN CITY');
INSERT INTO MGMAG_STORE VALUES(901, 'Auchan Fresh Depot St Pet');

CREATE TABLE MGPDG_WAREHOUSE(
	unit_code INT references MGMAG_STORE(unit_code),
	warehouse CHAR(3), 
	priority VARCHAR(5), 
	start_date timestamp, 
	finish_date timestamp
);


INSERT INTO MGPDG_WAREHOUSE VALUES(709, 400, 10, '06.12.2017 0:00:00', '17.05.2019 0:00:00');
INSERT INTO MGPDG_WAREHOUSE VALUES(901, 401, 15, '08.12.2017 0:00:00', '18.05.2019 0:00:00');

SELECT MGMAG_STORE.unit_code AS store_code, unit_name AS store_name, MGPDG_WAREHOUSE.warehouse AS warehouse_code, priority, start_date AS link_start_date, finish_date AS link_finish_date FROM MGMAG_STORE FULL JOIN MGPDG_WAREHOUSE ON MGMAG_STORE.unit_code=MGPDG_WAREHOUSE.unit_code;