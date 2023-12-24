# frozen_string_literal: true

class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products.as_json(except: [:created_at, :updated_at])
  end
end
