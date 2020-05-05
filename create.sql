    /*
    Table need for store date.
    ------------------------------------------------------------------------------------------------------
    VERSION      DATE         AUTHOR     DESCRIPTION
    1.0.05/05    05/05/2020   b.kicior   Create. 
    */

create sequence position_seq
start with 1 increment by 1
MINVALUE 1 MAXVALUE 100000
CYCLE CACHE 2 ORDER;


CREATE TABLE WAREHOUSE
(
  ID_POSITION INTEGER default POSITION_SEQ.NEXTVAL CONSTRAINT id_w_pk PRIMARY KEY 
, WIDE NUMBER (4,2) NOT NULL
, LENGTH NUMBER (4,2) NOT NULL
, MIN_HIGH NUMBER (4,2) NOT NULL
, MAX_HIGH NUMBER (4,2) NOT NULL
, SURFACE NUMBER (6,2)
, SURFACE_COST NUMBER (7,2)
, SURFACE_WALL NUMBER (7,2)
, SURFACE_WALL_COST NUMBER (7,2)
, INSERT_DATE TIMESTAMP default sysdate
, STATUS NUMBER(1,0) DEFAULT 1
);
