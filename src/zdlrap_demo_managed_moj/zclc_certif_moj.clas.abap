CLASS zclc_certif_moj DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " INSERINDO AQUI
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclc_certif_moj IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
 types: tt_certif type table of zrap_certif_moj with default key.

    "cert_uuid está errado. Mas é soment para teste

    data(lt_certif) = value tt_certif(
      ( cert_uuid = '1' matnr = '1')
      ( cert_uuid = '2' matnr = '2')
      ( cert_uuid = '3' matnr = '3')
    ).

    delete from zrap_certif_moj.

    modify zrap_certif_moj from table @lt_certif.

    if sy-subrc = 0.
        out->write( 'Certificados inseridos com sucesso' ).
    endif.
  ENDMETHOD.

ENDCLASS.
