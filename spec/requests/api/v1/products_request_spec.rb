# frozen_string_literal: true

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

      expect(json_response).to contain_exactly({ id: product_first.id,
                                                 quantity: product_first.quantity },
                                               { id: product_second.id,
                                                 quantity: product_second.quantity })
    end
  end
end
