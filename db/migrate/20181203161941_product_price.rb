class ProductPrice < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :numeric
  end
end
