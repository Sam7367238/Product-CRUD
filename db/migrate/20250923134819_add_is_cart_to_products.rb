class AddIsCartToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :cart, :boolean
  end
end
