@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status do certificado'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_RAP_CERTIF_ST_MOJ as select from zrap_cert_st_moj
{
    key state_uuid as StateUuid,
    cert_uuid as CertUuid,
    matnr as Matnr,
    version as Version,
    status as Status,
    status_old as StatusOld,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    loca_last_changed_at as LocaLastChangedAt
}
