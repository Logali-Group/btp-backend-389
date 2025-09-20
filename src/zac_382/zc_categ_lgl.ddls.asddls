@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Categorias'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MASTER
}
define view entity zc_categ_lgl
  as select from ztb_catego_lgl
{
  key bi_categ    as Categoria,
      descripcion as Descripcion
}
