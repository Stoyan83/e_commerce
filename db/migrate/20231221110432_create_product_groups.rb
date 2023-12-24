# frozen_string_literal: true

class CreateProductGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :product_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
