@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Clientes Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_clnts_lib_lgl
  as select from ztb_clnts_lib_lg
{
  key id_libro                     as IdLibro,
      count( distinct id_cliente ) as Ventas

}
group by
  id_libro;
