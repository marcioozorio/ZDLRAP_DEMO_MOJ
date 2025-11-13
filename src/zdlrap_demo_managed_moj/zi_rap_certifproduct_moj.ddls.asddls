@AbapCatalog.viewEnhancementCategory: [#NONE]
// Modificado
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite - Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_RAP_CERTIFPRODUCT_MOJ 
as select from ZI_RAP_CERTIF_MOJ
 // Inserido
 composition [1..*] of ZI_RAP_CERTIFSTPRODUCT_MOJ as _Stats
 association [1..1] to ZI_RAP_PRODUCT_MOJ as _Prod
                                          on $projection.Matnr = _Prod.Matnr
                                          and _Prod.Language = $session.system_language // Opcional se linha descr. abaixo                                          
{
    key CertUuid,
    Matnr,
    // Inserido (tipo um inline)
    _Prod[ Language = $session.system_language ].Description as Description,
    Version,
    CertStatus,
    CertCe,
    CertGs,
    CertFcc,
    CertIso,
    CertTuev,
    //*** Inserido - Informando que o RAP vai gerenciar pra mim
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocaLastChangedAt,
    
    _Prod,
    _Stats
}
