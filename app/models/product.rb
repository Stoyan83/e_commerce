# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :product_group
  belongs_to :color, optional: true
  belongs_to :size, optional: true
  belongs_to :brand

  validates_uniqueness_of :product_group_id, scope: [:color_id, :size_id, :brand_id], allow_nil: true
  validates_presence_of :product_group
  validates_presence_of :brand
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
  validates :base_price, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
end
