@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS com JOIN'
@Metadata.ignorePropagatedAnnotations: true
@OData.publish: true
define view entity ZCDS_MVRDEOLIVEIR_JOIN as select from spfli
inner join scarr
on spfli.carrid = scarr.carrid
{
    key spfli.carrid as Carrid,
    @EndUserText.label: 'ID Comp. Área'
    key spfli.connid as Connid,
    spfli.countryfr as Countryfr,
    spfli.cityfrom as Cityfrom,
    spfli.airpfrom as Airpfrom,
    spfli.countryto as Countryto,
    spfli.cityto as Cityto,
    spfli.airpto as Airpto,
    //spfli.fltime as Fltime,
    spfli.deptime as Deptime,
    spfli.arrtime as Arrtime,
    spfli.distid as Distid,
    spfli.fltype as Fltype,
    spfli.period as Period,
    scarr.currcode
}
