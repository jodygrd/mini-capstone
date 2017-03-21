class FixImages < ActiveRecord::Migration[5.0]
  def change
  	rename_column :images, :product_id, :produce_id
  end
end
