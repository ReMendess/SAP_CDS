@AbapCatalog.sqlViewName: 'ZMVDEOLI4'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS com parâmetros'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_MVRDEOLIVEIR_PARAM 
with parameters p_moeda : abap.char( 3 )
as select from scarr
{
    key carrid as Carrid,
    carrname as Carrname,
    currcode as Currcode,
    url as Url
} where currcode = $parameters.p_moeda
