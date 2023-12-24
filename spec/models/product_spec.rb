# frozen_string_literal: true

require 'rails_helper'

describe Product do
  context 'associations' do
    it { is_expected.to belong_to(:product_group) }
    # it { is_expected.to belong_to(:color).optional }
    # it { is_expected.to belong_to(:size).optional }
    it { is_expected.to belong_to(:brand) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:product_group) }
    it { is_expected.to validate_presence_of(:brand) }

    it { is_expected.to validate_numericality_of(:quantity).only_integer.is_greater_than_or_equal_to(0) }
    it { is_expected.to validate_numericality_of(:base_price).only_integer.is_greater_than_or_equal_to(0) }
  end
end
