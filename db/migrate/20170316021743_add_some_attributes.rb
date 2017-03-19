class AddSomeAttributes < ActiveRecord::Migration[5.0]
  def change
  	change_column :produces, :description, :text
  	change_column :produces, :price, "numeric USING CAST(price AS numeric)"
		change_column :produces, :price, :decimal, precision: 9, scale: 2
		add_column :produces, :inventory, :integer
  end
end
