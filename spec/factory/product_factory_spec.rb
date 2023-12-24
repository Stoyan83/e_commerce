# frozen_string_literal: true

require 'rails_helper'

describe 'Product factory' do
  subject(:product) { create(:product) }

  it 'creates a valid product' do
    expect(product).to be_valid
    expect(product.active).to be(true)
    expect(product.quantity).to eq(10)
    expect(product.base_price).to eq(100)
    expect(product.product_group).to be_present
    expect(product.brand).to be_present
  end
end
