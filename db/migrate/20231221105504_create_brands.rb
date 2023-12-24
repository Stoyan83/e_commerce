class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.boolean :active, default: true
      t.integer :redemption
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
