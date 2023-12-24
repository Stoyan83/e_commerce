# frozen_string_literal: true

require 'rails_helper'

describe PagesController do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
