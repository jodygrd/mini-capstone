class AddSupplierId < ActiveRecord::Migration[5.0]
  def change
  	add_column :produces, :supplier_id, :integer
  end
end
