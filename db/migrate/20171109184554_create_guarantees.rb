class CreateGuarantees < ActiveRecord::Migration[5.1]
  def change
    create_table :guarantees do |t|
      t.string  :correlative
      t.string  :income_number
      t.date    :income_date
      t.string  :income_applicant
      t.string  :borrower_name
      t.integer :borrower_id
      t.string  :bank_name
      t.string  :guarantee_number
      t.string  :value_guarantee
      t.string  :currency_guarantee
      t.date    :due_date
      t.string  :state
      t.string  :bail
      t.string  :detail
      t.string  :bip
      t.string  :devolution_number
      t.date    :devolution_date
      t.string  :devolution_return
      t.string  :sectorialist_devolution
      t.string  :email
      t.string  :technical_unit
      t.text    :observation   

      t.timestamps
    end
  end
end
