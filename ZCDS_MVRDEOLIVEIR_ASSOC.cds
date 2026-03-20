@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS com Association'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_MVRDEOLIVEIR_ASSOC as select from scarr
association [1] to spfli as _scarr_to_spfli on $projection.Carrid = _scarr_to_spfli.carrid
{
    key carrid as Carrid,
    carrname as Carrname,
    currcode as Currcode,
    url as Url,
     _scarr_to_spfli.cityfrom as CityFrom
}
