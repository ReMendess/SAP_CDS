@EndUserText.label: 'CDS com Table Function'
define table function ZCDS_MVRDEOLIVEIR_TABL_FUNCT
with parameters 
@Environment.systemField: #CLIENT 
client : abap.clnt
returns {
  key client : abap.clnt;
  key carrid : s_carrid;
  key connid : s_conn_id;
  carrname : s_carrname;
  currcode : s_currcode;
  url : s_url;
  countryfr : land1;
  airpfrom : s_fromairp;
  countryto : land1;
  cityfrom : s_from_cit;
  cityto : s_to_city;
  
  
}
implemented by method zcl_amdp_mvrdeoliveir=>get_flights;
