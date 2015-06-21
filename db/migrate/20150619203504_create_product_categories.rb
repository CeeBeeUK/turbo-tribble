class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories, :id => false do |t|
      t.references :product
      t.references :category
    end
    add_index :product_categories, [:product_id, :category_id]
    add_index :product_categories, [:category_id, :product_id]
  end
end
