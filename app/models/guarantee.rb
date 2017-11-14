class Guarantee < ApplicationRecord
  extend Enumerize

  enumerize :bank_name, in: [:estado, :santander, :bbva, :corpbanka,
                        :falabella, :ripley, :chile, :bice, :scotiabank,
                        :edwards, :internacional, :itau, :security, :proaval,
                        :masaval, :bci]

  enumerize :state, in: [:devuelta, :vencida, :vigente]

  enumerize :currency_guarantee, in: [:uf, :clp, :eur, :us]

  enumerize :devolution_return, in: [:retiro, :correspondencia]
  
end
