class AddImageColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :produces, :image, :string
  end
end
