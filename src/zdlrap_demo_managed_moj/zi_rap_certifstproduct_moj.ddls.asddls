@AbapCatalog.viewEnhancementCategory: [#NONE]
// Modif
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado Status com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_RAP_CERTIFSTPRODUCT_MOJ 
as select from ZI_RAP_CERTIF_ST_MOJ
 // Inserido
 association to parent ZI_RAP_CERTIFPRODUCT_MOJ as _Certif 
                                                on $projection.CertUuid = _Certif.CertUuid
 association [1..1] to ZI_RAP_PRODUCT_MOJ as _Prod
                                          on $projection.Matnr = _Prod.Matnr
                                          and _Prod.Language = $session.system_language // Opcional se linha descr. abaixo  
{
    key StateUuid,
    CertUuid,
    Matnr,
    // Inserido (tipo um inline)
    _Prod[ Language = $session.system_language ].Description as Description,
    //_Prod.Description
    Version,
    Status,
    StatusOld,
    //*** Inserido 
    @Semantics.user.lastChangedBy: true
    LastChangedBy,
    //*** Inserido 
    @Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt,
    //*** Inserido - Informando que o RAP vai gerenciar pra mim
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocaLastChangedAt,
    
    _Certif 
}
