class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :in_stock
      t.string :product_code
      t.integer :category_id
      t.integer :subcategory_id
      t.string :avatar
      t.string :price

      t.timestamps
    end
  end
end
