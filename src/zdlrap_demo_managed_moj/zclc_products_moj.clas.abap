CLASS zclc_products_moj DEFINITION
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



CLASS zclc_products_moj IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    types: tt_products type table of zrap_product_moj with default key.
    data(lt_products) = value tt_products(
      ( matnr = '1' description = 'Celular'    language = 'P')
      ( matnr = '2' description = 'Televisao'  language = 'P')
      ( matnr = '3' description = 'Computador' language = 'P')
      ( matnr = '1' description = 'Phone'   language = 'E')
      ( matnr = '2' description = 'Television' language = 'E')
      ( matnr = '3' description = 'Computer'   language = 'E')
    ).

    delete from zrap_product_moj.

    modify zrap_product_moj from table @lt_products.

    if sy-subrc = 0.
        out->write( 'Produtos inseridos com sucesso' ).
    endif.
  ENDMETHOD.

ENDCLASS.
