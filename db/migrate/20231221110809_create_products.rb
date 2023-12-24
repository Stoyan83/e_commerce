# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.boolean :active, default: true
      t.integer :quantity
      t.integer :base_price
      t.references :product_group, null: false, foreign_key: true
      t.references :color, foreign_key: true, optional: true
      t.references :size, foreign_key: true, optional: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
