@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_RAP_CERTIFSTPRODUCT_MOJ 
as projection on ZI_RAP_CERTIFSTPRODUCT_MOJ
{
    key StateUuid,
    CertUuid,
    Matnr,
    Description,
    Version,
    Status,
    StatusOld,
    LastChangedBy,
    LastChangedAt,
    LocaLastChangedAt,
    /* Associations */
    _Certif
}
