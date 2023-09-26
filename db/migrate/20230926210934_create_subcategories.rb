class CreateSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.integer :cards_count

      t.timestamps
    end
  end
end
