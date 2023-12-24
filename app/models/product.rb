# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :product_group
  belongs_to :color, optional: true
  belongs_to :size, optional: true

  # validates_uniqueness_of :product_group_id, scope: %i[color_id size_id brand_id merchant_id], allow_nil: true
end
