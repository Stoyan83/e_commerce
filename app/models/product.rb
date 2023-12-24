# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :product_group
  belongs_to :color, optional: true
  belongs_to :size, optional: true
  belongs_to :brand

  validates_presence_of :product_group
  validates_presence_of :brand
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
  validates :base_price, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }

  validate :unique_combination_of_attributes

  private

  def unique_combination_of_attributes
    existing_record = Product.find_by(
      product_group_id:,
      color_id: color_id || nil,
      size_id: size_id || nil,
      brand_id:
    )

    return unless existing_record && existing_record != self

    errors.add(:base, "Product with the same color, size, brand, and product group already exists. (ID: #{existing_record.id})")
  end
end
