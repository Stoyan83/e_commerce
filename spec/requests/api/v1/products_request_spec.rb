require 'rails_helper'

RSpec.describe 'api/v1/products' do
  let!(:product_first) { create(:product) }
  let!(:product_second) { create(:product) }

  describe 'index' do
    let(:path) { '/api/v1/products' }

    it 'returns a successful response' do
      get path
      expect(response).to have_http_status(:ok)
    end

    it 'returns a JSON response with the list of products' do
      get path

      json_response = JSON.parse(response.body, symbolize_names: true)

      expected_attributes_first = product_first.attributes.except('created_at', 'updated_at').symbolize_keys
      expected_attributes_second = product_second.attributes.except('created_at', 'updated_at').symbolize_keys

      expect(json_response).to contain_exactly(expected_attributes_first, expected_attributes_second)
    end
  end
end
