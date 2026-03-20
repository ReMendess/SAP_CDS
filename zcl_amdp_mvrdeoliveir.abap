CLASS zcl_amdp_mvrdeoliveir DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    CLASS-METHODS: get_flights for TABLE FUNCTION ZCDS_MVRDEOLIVEIR_TABL_FUNCT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_amdp_mvrdeoliveir IMPLEMENTATION.
  METHOD get_flights BY DATABASE FUNCTION
                        FOR HDB
                        LANGUAGE SQLSCRIPT
                        USING scarr spfli.

   RETURN SELECT sc.mandt as client,
                 sc.carrid,
                 sp.connid,
                 sc.carrname,
                 sc.currcode,
                 sc.url,
                 sp.countryfr,
                 sp.airpfrom,
                 sp.countryto,
                 sp.cityfrom,
                 sp.cityto

   FROM scarr as sc
   INNER JOIN spfli as sp
   ON sc.carrid = sp.carrid;

  ENDMETHOD.

ENDCLASS.
