# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    active { true }
    quantity { 10 }
    base_price { 100 }

    product_group
    brand

    trait :with_color do
      color
    end

    trait :with_size do
      size
    end
  end

  factory :product_group do
    sequence(:name) { |n| "Product Group #{n}" }
    description { "Sample Description" }
  end

  factory :brand do
    name { "Sample Brand" }
    description { "Sample Description" }
  end

  factory :color do
    name { "Sample Color" }
  end

  factory :size do
    name { "Sample Size" }
  end
end
