class Brand < ApplicationRecord
  has_many :brand_models
  belongs_to :bike
  #accepts_nested_attributes_for :brand_models
end
