require 'rails_helper'

describe Brand do
  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to define_enum_for(:redemption).with_values([:online, :instore]) }
  end
end
