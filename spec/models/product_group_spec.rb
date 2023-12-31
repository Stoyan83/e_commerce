# frozen_string_literal: true

require 'rails_helper'

describe ProductGroup do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
  end
end
