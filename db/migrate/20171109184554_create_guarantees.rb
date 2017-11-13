class CreateGuarantees < ActiveRecord::Migration[5.1]
  def change
    create_table :guarantees do |t|
      t.string :income_number
      t.date :income_date
      t.string :income_applicant
      t.string :borrower_name
      t.integer :borrower_id
      t.string :bank_name
      t.string :value_guarantee
      t.string :currency_guarantee
      t.date :due_date
      t.string :bail
      t.string :detail
      t.string :bip
      t.string :email
      t.text :observation
      t.string :state
      t.string :devolution_number
      t.date :devolution_date
      t.string :devolution_return
      t.string :sectorialist_devolution
      t.string :technical_unit

      t.timestamps
    end
  end
end
