class Guarantee < ApplicationRecord
  resourcify

  extend Enumerize

  searchkick

  auto_increment :correlative

  belongs_to :user

  enumerize :bank_name, in: [:ESTADO, :SANTANDER, :BBVA, :CORPBANCA, :FALABELLA, :RIPLEY, :CHILE, :BICE, :SCOTIABANK, :CREDITO_E_INVERSIONES,
                            :EDWARDS, :INTERNACIONAL, :ITAU, :SECURITY, :PROAVAL, :HDI, :CONSORCIO, :FIRST_AVAL, :NOTARIA,
                            :MASAVAL, :BCI, :-]

  enumerize :state, in: [:DEVUELTA, :VENCIDA, :VIGENTE, :-]

  enumerize :currency_guarantee, in: [:UF, :CLP, :EUR, :US, :-]

  enumerize :devolution_return, in: [:DESPACHO, :DESPACHO_CORRESPONDENCIA, :RETIRO_PERSONAL, :-]

  enumerize :guarantee_type, in: [:GARANTIA, :VALE_VISTA, :LETRA_CAMBIO, :CERTIFICADO_PRORROGA, :CERTIFICADO_FIANZA, :POLIZA_GARANTIA, :PAGARE, :CERTIFICADO]

end
