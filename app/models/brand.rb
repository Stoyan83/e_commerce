# frozen_string_literal: true

class Brand < ApplicationRecord
  has_many :products

  enum redemption: { online: 0, instore: 1 }

  validates :name, presence: true
  validates :description, presence: true
end
