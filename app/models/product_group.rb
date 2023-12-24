# frozen_string_literal: true

class ProductGroup < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :description, presence: true
end
