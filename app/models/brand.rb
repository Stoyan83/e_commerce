class Brand < ApplicationRecord
  has_many :products

  enum redemption: { online: 'online', instore: 'instore' }
end
