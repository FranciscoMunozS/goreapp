class AddGuaranteeTypeToGuarantees < ActiveRecord::Migration[5.1]
  def change
    add_column :guarantees, :guarantee_type, :string
  end
end
