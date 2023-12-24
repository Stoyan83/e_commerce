# frozen_string_literal: true

require 'rails_helper'

describe Product do
  context 'associations' do
    it { is_expected.to belong_to(:product_group) }
    it { is_expected.to belong_to(:brand) }
    # it { is_expected.to belong_to(:color).optional }
    # it { is_expected.to belong_to(:size).optional }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:product_group) }
    it { is_expected.to validate_presence_of(:brand) }
    it { is_expected.to validate_numericality_of(:quantity).only_integer.is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:base_price).only_integer.is_greater_than_or_equal_to(0) }

    describe '#unique_combination_of_attributes' do
      let(:existing_product) { create(:product) }

      it 'validates uniqueness of the combination of attributes' do
        product = build(:product,
                        product_group: existing_product.product_group,
                        # color: existing_product.color,
                        # size: existing_product.size,
                        brand: existing_product.brand)

        expect(product).not_to be_valid
        expect(product.errors[:base]).to include(
          "Product with the same color, size, brand, and product group already exists. (ID: #{existing_product.id})"
        )
      end

      it 'does not add errors if the combination is unique' do
        product = build(:product)

        expect(product).to be_valid
        expect(product.errors[:base]).to be_empty
      end
    end
  end
end
