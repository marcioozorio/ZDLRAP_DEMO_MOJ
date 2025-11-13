@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_RAP_CERTIFPRODUCT_MOJ as projection on ZI_RAP_CERTIFPRODUCT_MOJ
{
    key CertUuid,
    Matnr,
    Description,
    Version,
    CertStatus,
    CertCe,
    CertGs,
    CertFcc,
    CertIso,
    CertTuev,
    LocaLastChangedAt,
    /* Associations */
    _Prod,
    _Stats
}
